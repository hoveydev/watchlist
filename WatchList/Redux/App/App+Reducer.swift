typealias Reducer<ReduxState, Action> = (inout ReduxState, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    switch action {
    case .splash(let splashAction):
        splashReducer(state: &state, action: splashAction)
    case .login(let loginAction):
        loginReducer(state: &state, action: loginAction)
    }
}

func splashReducer(state: inout AppState, action: SplashAction) {
    switch action {
    case .animateLogo:
        var splashState = state.splashState
        splashState.size = 0.9
        splashState.opacity = 1.0
    case .login:
        state.rootViewStack = [.login]
    case .logout:
        print("logged out")
    }
}
