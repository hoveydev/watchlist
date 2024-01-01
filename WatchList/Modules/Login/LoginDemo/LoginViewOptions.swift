import Foundation
import Login

struct LoginViewOptions {
    let loginBaseViewModel: Login.ViewModel =
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
    
    let loginViewModelWithError: Login.ViewModel =
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
