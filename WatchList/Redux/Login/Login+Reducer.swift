import SwiftUI

func loginReducer(state: inout AppState, action: LoginAction) -> Void {

    switch action {
    case let .enterEmail(email):
        state.loginState.email = email
    case let .enterPassword(password):
        state.loginState.password = password
    case .loginSuccess:
        print("Login was successful!")
        state.isLoggedIn = true
        // loading screen?
    case let .loginFail(error):
        print("Login failed... \(error)")
        state.loginState.errorMessage = error
    case .register:
        state.loginState.viewStack.append(.register)

    // MARK: For testing ONLY
    case .testNone:
        _ = state.loginState.viewStack.popLast()
        
    // MARK: Default case for middleware actions
    default:
        return
    }
}
