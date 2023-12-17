import SwiftUI
import Foundation
import Components

public struct LoginView: View {
    let viewState: Login.LoginViewState
    
    public init(viewState: Login.LoginViewState) {
        self.viewState = viewState
    }

    public var body: some View {
        VStack {
            TextField("Email", text: viewState.state.$email)
            SecureField("Password", text: viewState.state.$password)
            Button("Click me!") {
                print("button tapped")
                /// reducer method here instead
                viewState.state.isLoggedIn = true
            }
        }
        .padding()
    }
}

//#Preview {
//    LoginView()
//}
