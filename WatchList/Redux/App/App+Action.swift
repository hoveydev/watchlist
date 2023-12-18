enum AppAction {
    case splash(SplashAction)
    case login(LoginAction)
}

enum SplashAction {
    case animateLogo
    case login
    case logout
}
