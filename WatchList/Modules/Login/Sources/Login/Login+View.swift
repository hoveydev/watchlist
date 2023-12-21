import SwiftUI
import Foundation
import Components

public struct Login: View {
    @ObservedObject var viewModel: ViewModel
    @State var email: String = ""
    @State var password: String = ""
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        VStack {
            WListTextField("Email:", text: $email, isSecure: false)
                .onChange(of: email) {
                    viewModel.emailChangeAction(email)
                }
            WListTextField("Password:", text: $password, isSecure: true)
                .onChange(of: password) {
                    viewModel.passwordCangeAction(password)
                }
            Button("Click me!") {
                viewModel.loginAction()
            }
        }
        .padding()
    }
}

//#Preview {
//    LoginView()
//}
