import SwiftUI
import Components
import Login

struct ContentView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        VStack {
            LoginView(email: "", password: "")
        }
    }
}

//#Preview {
//    ContentView()
//}
