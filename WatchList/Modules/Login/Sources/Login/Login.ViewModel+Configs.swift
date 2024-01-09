import SwiftUI

public extension Login.ViewModel {
    enum ScreenType: String {
        case defaultLogin
        case loginWithError
        
        public var viewModel: Login.ViewModel {
            switch self {
            case .defaultLogin:
                return .loginBaseViewModel
            case .loginWithError:
                return .loginViewModelWithError
            }
        }
    }

    static let loginBaseViewModel: Login.ViewModel =
        Login.ViewModel(
            title: "Test Title",
            subTitle: "Test Subtitle",
            emailLabel: "Email Label",
            passwordLabel: "Password Label",
            buttonLabel: "Button Label",
            loginAction: {
                print("logged in bitch")
            },
            emailChangeAction: { _ in
                print("email changed")
            },
            passwordCangeAction: { _ in
                print("password changed")
            },
            errorMessage: ""
        )
    
    static let loginViewModelWithError: Login.ViewModel =
        Login.ViewModel(
            title: "Test Title",
            subTitle: "Test Subtitle",
            emailLabel: "Email Label",
            passwordLabel: "Password Label",
            buttonLabel: "Button Label",
            loginAction: {
                print("logged in bitch")
            },
            emailChangeAction: { _ in
                print("email changed")
            },
            passwordCangeAction: { _ in
                print("password changed")
            },
            errorMessage: "error"
        )
}
