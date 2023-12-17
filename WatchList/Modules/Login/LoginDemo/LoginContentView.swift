import SwiftUI
import Login

struct LoginContentView: View {
    var body: some View {
        VStack {
            LoginView(viewState: Login.LoginViewState())
        }
    }
}

//#Preview {
//    ContentView()
//}
