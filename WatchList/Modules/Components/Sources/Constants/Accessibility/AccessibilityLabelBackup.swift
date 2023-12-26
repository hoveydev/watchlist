import Foundation

public class AccessibilityLabelBackup {
    public enum Module {
        case app
        case login(_ screen: LoginScreen)
    }
    
    public enum LoginScreen {
        case login(_ component: LoginComponent)
    }
    
    public enum LoginComponent {
        case title
        case subtitle
        case emailLabel
        case emailInput
        case passwordLabel
        case passwordInput
        case loginButton
    }
    
    public var label: Module
    
    public init(_ label: Module) {
        self.label = label
    }
    
    public func generateLabel() -> String {
        let components = getComponents()
        return components.joined(separator: "|")
    }
    
    private func getComponents() -> [String] {
        var components: [String] = []
        let prefix: String = "module:"
        
        switch label {
        case .app:
            components.append("\(prefix)app")
        case .login(let loginScreen):
            components.append("\(prefix)login")
            components.append(contentsOf: getComponents(for: loginScreen))
        }
        
        return components
    }
    
    private func getComponents(for loginScreen: LoginScreen) -> [String] {
        var components: [String] = []
        let prefix: String = "screen:"
        
        switch loginScreen {
        case .login(let loginComponents):
            components.append("\(prefix)login")
            components.append(contentsOf: getComponents(for: loginComponents))
        }
        
        return components
    }
    
    private func getComponents(for loginComponents: LoginComponent) -> [String] {
        let prefix: String = "component:"
        switch loginComponents {
        case .title:
            return ["\(prefix)title"]
        case .subtitle:
            return ["\(prefix)subtitle"]
        case .emailLabel:
            return ["\(prefix)emailLabel"]
        case .emailInput:
            return ["\(prefix)emailInput"]
        case .passwordLabel:
            return ["\(prefix)passwordLabel"]
        case .passwordInput:
            return ["\(prefix)passswordInput"]
        case .loginButton:
            return ["\(prefix)loginButton"]
        }
    }
}
