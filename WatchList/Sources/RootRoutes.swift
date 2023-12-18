import Foundation
import Login
import Components
import SwiftUI

protocol Routes: Hashable { }

enum RootRoutes: Routes {
    case splash
    case login // needs to change to Authentication - also state will change to environment object
    case register // this will be moved to Auth module (Login)
}

protocol ViewStates { }

//struct rootViewStates: ViewStates {
//    public var loginViewState: Login.LoginViewState
//    public var registerViewState: RegisterViewState
//}
//
//struct RegisterViewState: ViewState {
//    let id: UUID = UUID()
//    var state: ReduxState = SplashState()
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//}
//
//extension RegisterViewState {
//    static func == (lhs: RegisterViewState, rhs: RegisterViewState) -> Bool {
//        lhs.id == rhs.id
//    }
//}

struct RootRoutesView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        NavigationStack {
            switch store.state.rootViewStack.last {
            case .splash:
                let splashScreenMediator = SplashScreenMediator()
                let viewModel = splashScreenMediator.createSplashScreenViewModel(store: store)
                SplashScreen(viewModel: viewModel)
            case .login:
                let loginMediator = LoginMediator()
                let viewModel = loginMediator.createLoginViewModel(store: store)
                Login(viewModel: viewModel)
                // need mediator func
                // LoginView(viewState: loginViewState)
            case .some(.register):
                EmptyView()
            case .none:
                EmptyView()
            }
        }
    }
}
