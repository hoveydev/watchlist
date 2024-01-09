import SwiftUI

func loginReducer(state: inout AppState, action: LoginAction) -> Void {

    switch action {

    case let .enterEmail(email):
        state.loginState.email = email

    case let .enterPassword(password):
        state.loginState.password = password
        
    case .loginTap:
        state.loginState.viewStack.append(.loading)

    case .loginSuccess:
        _ = state.loginState.viewStack.popLast()
        state.loginState.errorMessage = ""
        state.isLoggedIn = true

    case let .loginFail(error):
        _ = state.loginState.viewStack.popLast()
        state.loginState.errorMessage = error

    case .register:
        state.loginState.viewStack.append(.register)

    // MARK: For testing ONLY
    case .testNone:
        _ = state.loginState.viewStack.popLast()
        
    // MARK: Default case for unused actions
//    default:
//        return
    }
}
