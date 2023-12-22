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
                store.dispatch(.login(.login))
            },
            emailChangeAction: { value in
                store.dispatch(.login(.enterEmail(email: value)))
            },
            passwordCangeAction: { value in
                store.dispatch(.login(.enterPassword(password: value)))
            }
        )
        return viewModel
    }
    
    func logInWithFirebase(state: AppState) {
        let loginState = state.loginState
        Auth.auth().signIn(withEmail: loginState.email, password: loginState.password) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
            }
        }
    }
}
