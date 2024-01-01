import SwiftUI
import Login

//class AppConfiguration {
//    static var shared = AppConfiguration()
//    var viewModel: Login.ViewModel?
//    
//    private init() {}
//}

@main
struct LoginDemoApp: App {
    var body: some Scene {
        WindowGroup {
            // MARK: Change below ScreenType to change the demo app screen
            configureAppForUITests()
        }
    }
}

extension LoginDemoApp {
    enum ScreenType {
        static let defaultLogin = LoginViewOptions().loginBaseViewModel // could do extension on viewModel instead!
        static let loginWithError = LoginViewOptions().loginViewModelWithError
    }
}

extension LoginDemoApp {
    private func configureAppForUITests() -> LoginContentView { // this may need to switch to any view at some point to accomodate other views in the module
        if ProcessInfo.processInfo.arguments.contains("default") {
            return LoginContentView(viewModel: ScreenType.defaultLogin)
        } else if ProcessInfo.processInfo.arguments.contains("error") {
            return LoginContentView(viewModel: ScreenType.loginWithError)
        } else {
            return LoginContentView(viewModel: ScreenType.defaultLogin)
        }
    }
}
