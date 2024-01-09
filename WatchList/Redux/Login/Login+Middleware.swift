import Combine
import Login
import SwiftUI

func loginMiddleware(state: AppState, action: LoginAction, dispatch: @escaping Dispatcher<AppAction>) -> Void {
    switch action {
    case .loginTap:
        let mediator = LoginMediator()
        mediator.logInWithFirebase(state: state) { result in
            switch result {
            case .success(_):
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        dispatch(convertAction(.loginSuccess))
                    }
                }
            case .failure(let failure):
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        dispatch(convertAction(.loginFail(error: failure.localizedDescription)))
                    }
                }
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
