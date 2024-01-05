import SwiftUI
import Login

@main
struct LoginDemoApp: App {
    // MARK: Change below screen for demo app
    static let demoAppScreen: LoginContentView = .init(viewModel: .loginBaseViewModel)

    var body: some Scene {
        WindowGroup {
            configureAppForUITests()
        }
    }
}

extension LoginDemoApp {
    private func configureAppForUITests() -> LoginContentView {
        if ProcessInfo.processInfo.environment["UITEST"] == "1" {
            let arguments = ProcessInfo.processInfo.arguments
            if let matchedScreenType = arguments.compactMap(Login.ViewModel.ScreenType.init(rawValue:)).first {
                return LoginContentView(viewModel: matchedScreenType.viewModel)
            } else {
                return LoginContentView(viewModel: Login.ViewModel.ScreenType.defaultLogin.viewModel)
            }
        // below will never have testing coverage
        } else {
            return LoginDemoApp.demoAppScreen
        }
    }
}
