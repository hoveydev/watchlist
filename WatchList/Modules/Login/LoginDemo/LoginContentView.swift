import SwiftUI
import Login

struct LoginContentView: View {
    var body: some View {
        VStack {
            Login(viewModel: .init(
                loginAction: {
                    print("logged in bitch")
                },
                emailChangeAction: { _ in
                    print("email changed")
                },
                passwordCangeAction: { _ in
                    print("password changed")
                }
            ))
        }
    }
}

//#Preview {
//    ContentView()
//}
