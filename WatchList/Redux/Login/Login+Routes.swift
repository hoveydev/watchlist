import Login
import Components
import SwiftUI

enum LoginRoutes: Hashable {
    case root
    case register
    case loading
}

struct LoginRoutesView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        switch store.state.loginState.viewStack.last {
        case .root:
            let loginMediator = LoginMediator()
            let viewModel = loginMediator.createLoginViewModel(store: store)
            Login(viewModel: viewModel)
        case .loading:
            // this view is for loading
            WListLoadingSpinner {
                WListText("loading...")
            }.transition(.slide)
            // ideally this will be in a separate View with VeiewModel
            // in order to have valid a11y ids
        case .register:
            EmptyView()
        case .none:
            EmptyView()
        }
     }
}
