import SwiftUI
import Login

struct LoginContentView: View {
    var body: some View {
        VStack {
            Login(viewModel: .init(email: "Test", password: "Password", loginAction: {
                print("logged in bitch")
            }))
        }
    }
}

//#Preview {
//    ContentView()
//}
