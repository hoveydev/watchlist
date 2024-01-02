import Combine

public typealias Dispatcher<Action> = (Action) -> Void
public typealias Middleware<State, Action> = (State, Action, @escaping Dispatcher<Action>) -> Void

func appMiddleware() -> Middleware<AppState, AppAction> {
    return { state, action, dispatch in
        switch action {
        case .login(let loginAction):
            loginMiddleware(state: state, action: loginAction, dispatch: dispatch)
        }
    }
}
