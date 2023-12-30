import SwiftUI

func loginReducer(state: inout AppState, action: LoginAction) -> Void {

    switch action {
    case let .enterEmail(email):
        state.loginState.email = email
    case let .enterPassword(password):
        state.loginState.password = password
    case .loginTap:
        print("Login button was tapped") // not sure if anything should happen here
    case .loginSuccess:
        print("Login was successful!")
        // update isLoggedIn state and nav?
    case .loginFail:
        print("Login failed...")
        // update error messages state
    case .register:
        state.loginState.viewStack.append(.register)
    // MARK: For testing ONLY
    case .testNone:
        _ = state.loginState.viewStack.popLast()
    }
}
