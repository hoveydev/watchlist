import Foundation
import Login
import Components
import SwiftUI

enum AppRoutes: Hashable {
    case login // needs to change to Authentication - also state will change to environment object
}

struct AppRoutesView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        switch store.state.viewStack.last {
        case .login:
            LoginRoutesView().environment(store)
        case .none:
            EmptyView()
        }
    }
}
