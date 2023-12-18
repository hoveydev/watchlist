func loginReducer(state: inout LoginState, action: LoginAction) -> Void {
    
    switch action {
    case let .enterEmail(email):
        state.email = email
    case let .enterPassword(password):
        state.password = password
    case .login:
        state.isLoggedIn = true
        // will need to include the Firebase calls here
    case .register:
        print("register pressed")
    }
}
