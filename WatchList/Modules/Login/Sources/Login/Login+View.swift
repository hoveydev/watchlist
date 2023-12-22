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
            WListText(viewModel.title)
                .font(.wListTitle)
                .padding(.top, 50)
            WListText(viewModel.subTitle)
                .font(.wListBody)
                .padding(.bottom)
            WListTextField(viewModel.emailLabel, text: $email, isSecure: false)
                .onChange(of: email) {
                    viewModel.emailChangeAction(email)
                }
            WListTextField(viewModel.passwordLabel, text: $password, isSecure: true)
                .onChange(of: password) {
                    viewModel.passwordCangeAction(password)
                }
            WListButton(viewModel.buttonLabel) {
                viewModel.loginAction()
            }
        }
        .padding()
        Spacer()
    }
}

//#Preview {
//    LoginView()
//}
