typealias Reducer<ReduxState, Action> = (inout ReduxState, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    switch action {
    case .login(let loginAction):
        loginReducer(state: &state, action: loginAction)
    }
}
