func loginReducer(state: inout AppState, action: LoginAction) -> Void {
    var loginState = state.loginState

    switch action {
    case let .enterEmail(email):
        loginState.email = email
    case let .enterPassword(password):
        loginState.password = password
    case .login:
        state.isLoggedIn = true
        // will need to include the Firebase calls here
    case .register:
        state.loginState.viewStack.append(.register)
    // MARK: For testing ONLY
    case .testNone:
        _ = state.loginState.viewStack.popLast()
    }
}
