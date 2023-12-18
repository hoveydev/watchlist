import SwiftUI
import Components
import Firebase
import Login

final public class LoginMediator {
    init() { }
}

extension LoginMediator {
    func createLoginViewModel(store: AppStore) -> Login.ViewModel {
        let viewModel: Login.ViewModel = .init(
            email: "",
            password: "", 
            loginAction: {
                store.dispatch(.login(.login))
            }
        )
        return viewModel
    }
}
