import Foundation

public class AccessibilityLabel {
    public enum Module {
        case app
        case login(_ screen: LoginScreen)
    }
    
    public enum LoginScreen {
        case login(_ component: LoginComponent)
    }
    
    public enum UnknownScreen { }
    
    public enum LoginComponent: String {
        case title
        case subtitle
        case emailLabel
        case emailInput
        case passwordLabel
        case passwordInput
        case loginButton
    }
    
    public var module: Module = .login(.login(.emailInput))
    
    public init(_ module: Module) {
        self.module = module
    }
    
    public func generateAccessibilityLabel() -> String {
        let components = getComponents()
        print(components.joined(separator: "|")) // works!
        return components.joined(separator: "|")
    }
    
    private func getComponents() -> [String] {
        var components: [String] = []
        
        switch module {
        case .app:
            components.append("mod:app")
        case .login(let loginScreen):
            components.append("mod:login")
            components.append(contentsOf: getComponents(for: loginScreen))
        }
        
        return components
    }
    
    private func getComponents(for loginScreen: LoginScreen) -> [String] {
        var components: [String] = []
        
        switch loginScreen {
        case .login(let loginComponents):
            components.append("scr:login")
            components.append(contentsOf: getComponents(for: loginComponents))
        }
        
        return components
    }
    
    private func getComponents(for loginComponents: LoginComponent) -> [String] {
        switch loginComponents {
        case .title:
            return ["comp:title"]
        case .subtitle:
            return ["comp:subtitle"]
        case .emailLabel:
            return ["comp:emailLabel"]
        case .emailInput:
            return ["comp:emailInput"]
        case .passwordLabel:
            return ["comp:passwordLabel"]
        case .passwordInput:
            return ["comp:passswordInput"]
        case .loginButton:
            return ["comp:loginButton"]
        }
    }
}
