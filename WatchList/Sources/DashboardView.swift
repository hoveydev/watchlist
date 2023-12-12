import Components
import SwiftUI
import Firebase

struct DashboardView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        VStack {
            Button(store.state.dashboardState.logoutButtonText) {
                print("button clicked")
                logout()
            }
        }
        .padding()
    }
    
    func logout() {
        try? Auth.auth().signOut()
        store.dispatch(.logout)
    }
}

//#Preview {
//    DashboardView()
//}

