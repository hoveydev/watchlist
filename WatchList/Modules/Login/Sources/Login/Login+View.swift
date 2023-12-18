import SwiftUI
import Foundation
import Components

public struct Login: View {
    @ObservedObject var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        VStack {
            TextField("Email", text: $viewModel.email)
            SecureField("Password", text: $viewModel.password)
            Button("Click me!") {
                print("button tapped")
                viewModel.loginAction()
            }
        }
        .padding()
    }
}

//#Preview {
//    LoginView()
//}
