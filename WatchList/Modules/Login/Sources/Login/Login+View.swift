import SwiftUI
import Foundation

public struct Login: View {
    @ObservedObject var viewModel: ViewModel
    @State var email: String = ""
    @State var password: String = ""
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        VStack {
            TextField("Email", text: $email)
                .onChange(of: email) {
                    viewModel.emailChangeAction(email)
                }
            SecureField("Password", text: $password)
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
