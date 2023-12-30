import SwiftUI
import Login

struct LoginContentView: View {
    var body: some View {
        VStack {
            Login(viewModel: .init(
                title: "Test Title",
                subTitle: "Test Subtitle",
                emailLabel: "Email Label",
                passwordLabel: "Password Label",
                buttonLabel: "Button Label",
                loginAction: {
                    print("logged in bitch")
                },
                emailChangeAction: { _ in
                    print("email changed")
                },
                passwordCangeAction: { _ in
                    print("password changed")
                },
                errorMessage: ""
            ))
        }
    }
}

//#Preview {
//    ContentView()
//}
