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
//    func makeViewController() -> UIHostingController<Login> {
//        let viewModel = createLoginViewModel(appStore: appStore)
//        let viewController = UIHostingController(rootView: Login(viewModel: viewModel))
//        return viewController
//    }
    /// create viewModel
//    func createLoginViewModel(appStore: AppStore) -> Login.ViewModel {
//        let viewModel: Login.ViewModel = .init(id: UUID())
//        return viewModel
//    }
    
    // This will somehow need to be how we pass state to the modules - is this even possible?
    // I think this is why I had originally thought we would need to move state into it's own separate module - so that it can be accessed from anywhere
    // it would need to include all of the centralized Redux parts: State, Reducer, Actions, Store
}
