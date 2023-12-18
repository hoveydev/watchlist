func loginReducer(state: inout AppState, action: LoginAction) -> Void {
    var loginState = state.loginState.state

    switch action {
    case let .enterEmail(email):
        loginState.email = email
    case let .enterPassword(password):
        loginState.password = password
    case .login:
        loginState.isLoggedIn = true // maybe this isn't actually needed?
        state.isLoggedIn = true // needs to be tested on a new screen - think it should be fine, but ya never know lol
        // will need to include the Firebase calls here
    case .register:
        print("register pressed")
    }
}
