import Foundation

public protocol AppModule { }
public protocol AppScreen { }
public protocol AppComponent { }

public class A11yLabel {
    public var module: AppModule
    public var screen: AppScreen
    public var component: AppComponent
    
    public init(module: AppModule, screen: AppScreen, component: AppComponent) {
        self.module = module
        self.screen = screen
        self.component = component
    }
    
    public func makeLabel() -> String {
        let module = module
        let screen = screen
        let component = component
        let modulePrefix = "module:"
        let screenPrefix = "screen:"
        let componentPrefix = "component:"
        print("\(modulePrefix)\(module)|\(screenPrefix)\(screen)|\(componentPrefix)\(component)")
        return "\(modulePrefix)\(module)|\(screenPrefix)\(screen)|\(componentPrefix)\(component)"
    }
}
