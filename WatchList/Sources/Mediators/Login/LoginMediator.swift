import SwiftUI
import Components
import Firebase
import Login

final public class LoginMediator {
    init() { }
}

extension LoginMediator {
    func createLoginViewModel(store: AppStore) -> Login.ViewModel {
        let loginState: LoginState = store.state.loginState
        let viewModel: Login.ViewModel = .init(
            title: loginState.title,
            subTitle: loginState.subTitle,
            emailLabel: loginState.emailLabel,
            passwordLabel: loginState.passwordLabel,
            buttonLabel: loginState.buttonLabel,
            loginAction: {
                store.dispatch(.login(.loginTap))
            },
            emailChangeAction: { value in
                store.dispatch(.login(.enterEmail(email: value)))
            },
            passwordCangeAction: { value in
                store.dispatch(.login(.enterPassword(password: value)))
            },
            errorMessage: loginState.errorMessage
        )
        return viewModel
    }
    
    func logInWithFirebase(state: AppState, completion: @escaping (Result<String, Error>) -> Void) {
        let loginState = state.loginState
        Auth.auth().signIn(withEmail: loginState.email, password: loginState.password) { result, error in
            if let error = error {
                completion(.failure(error))
            } else if result != nil {
                completion(.success("Successful"))
            } else {
                let unknownError = NSError(domain: "Mine", code: 0, userInfo: nil)
                completion(.failure(unknownError))
            }
        }
    }
}
