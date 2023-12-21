func loginReducer(state: inout AppState, action: LoginAction) -> Void {

    switch action {
    case let .enterEmail(email):
        state.loginState.email = email
    case let .enterPassword(password):
        state.loginState.password = password
    case .login:
        let mediator = LoginMediator()
        mediator.logInWithFirebase(state: state) // need to check result
        state.isLoggedIn = true
        // will need to include the Firebase calls here
    case .register:
        state.loginState.viewStack.append(.register)
    // MARK: For testing ONLY
    case .testNone:
        _ = state.loginState.viewStack.popLast()
    }
}
