import SwiftUI
import Login

@main
struct LoginDemoApp: App {
    var body: some Scene {
        WindowGroup {
            configureAppForUITests()
        }
    }
}

extension LoginDemoApp {
    // MARK: Change below screen for demo app
    static let DemoAppScreen: LoginContentView = .init(viewModel: .loginBaseViewModel)
    
    enum ScreenType: String {
        case defaultLogin
        case loginWithError
        
        var viewModel: Login.ViewModel {
            switch self {
            case .defaultLogin:
                return .loginBaseViewModel
            case .loginWithError:
                return .loginViewModelWithError
            }
        }
    }
}

extension LoginDemoApp {
    private func configureAppForUITests() -> LoginContentView {
        if ProcessInfo.processInfo.environment["UITEST"] == "1" {
            let arguments = ProcessInfo.processInfo.arguments
            if let matchedScreenType = arguments.compactMap(ScreenType.init(rawValue:)).first {
                return LoginContentView(viewModel: matchedScreenType.viewModel)
            } else {
                return LoginContentView(viewModel: ScreenType.defaultLogin.viewModel)
            }
        } else {
            return LoginDemoApp.DemoAppScreen
        }
    }
}
