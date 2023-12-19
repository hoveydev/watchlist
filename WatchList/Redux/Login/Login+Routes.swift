import Login
import SwiftUI

enum LoginRoutes: Hashable {
    case root
    case register
}

struct LoginRoutesView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        NavigationStack {
            switch store.state.loginViewStack.last {
            case .root:
                let loginMediator = LoginMediator()
                let viewModel = loginMediator.createLoginViewModel(store: store)
                Login(viewModel: viewModel)
            case .register:
                EmptyView()
            case .none:
                EmptyView()
            }
        }
    }
}
