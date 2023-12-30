import Combine
import Login

func loginMiddleware(state: AppState, action: LoginAction, dispatch: @escaping Dispatcher<AppAction>) -> Void {
    switch action {
    case .loginTap:
        let mediator = LoginMediator()
        mediator.logInWithFirebase(state: state) { result in
            switch result {
            case .success(let success):
                print("$$$ success response: \(success)")
                dispatch(convertAction(.loginSuccess))
            case .failure(let failure):
                // print ("$$$ failure response: \(failure)")
                dispatch(convertAction(.loginFail(error: failure.localizedDescription)))
            }
        }
    default:
        break
    }
}

/// function that converts specific module action (LoginAction) to generic AppAction
func convertAction(_ action: LoginAction) -> AppAction {
    return AppAction.login(action)
}
