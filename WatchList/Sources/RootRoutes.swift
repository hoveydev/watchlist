import Foundation
import Login
import Components
import SwiftUI

protocol Routes: Hashable { }

enum RootRoutes: Routes {
    case login // needs to change to Authentication - also state will change to environment object
    case register // this will be moved to Auth module (Login)
}

protocol ViewStates { }

struct RootRoutesView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        NavigationStack {
            switch store.state.rootViewStack.last {
            case .login:
                let loginMediator = LoginMediator()
                let viewModel = loginMediator.createLoginViewModel(store: store)
                Login(viewModel: viewModel)
            case .some(.register):
                EmptyView()
            case .none:
                EmptyView()
            }
        }
    }
}
