import SwiftUI
import Components
import Firebase
import Login

final public class LoginMediator {
    init() { }
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
    
    func createLoginViewModel(store: AppStore) -> Login.ViewModel {
        // var loginState: LoginState = appStore.state.loginState.state
        let viewModel: Login.ViewModel = .init(email: "", password: "", loginAction: store.dispatch(.login))
        return viewModel
    }
    
    // This will somehow need to be how we pass state to the modules - is this even possible?
    // I think this is why I had originally thought we would need to move state into it's own separate module - so that it can be accessed from anywhere
    // it would need to include all of the centralized Redux parts: State, Reducer, Actions, Store
    
    // changing approach due to issues with circular dependencies with modules -
    /// I will instead need to create viewModels for each view
    /// use these functions to populate the data with state
    /// including the updating of the ViewStack
    /// then update the state with access to the reducers from here
    /// Views/ViewModels are all separate from the data that needs to be passed to them
    /// views can only conatin generic types
}
