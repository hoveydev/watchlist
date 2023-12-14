import SwiftUI
import Components
import Firebase
import Login

final class LoginMediator {
    let appStore: AppStore
    
    init(appStore: AppStore) {
        self.appStore = appStore
    }
}

extension LoginMediator {
    /// create viewController
    func makeViewController() -> UIHostingController<Login> {
        let viewModel = createLoginViewModel(appStore: appStore)
        let viewController = UIHostingController(rootView: Login(viewModel: viewModel))
        return viewController
    }
    /// create viewModel
    func createLoginViewModel(appStore: AppStore) -> Login.ViewModel {
        let viewModel: Login.ViewModel = .init(id: UUID())
        return viewModel
    }
}
