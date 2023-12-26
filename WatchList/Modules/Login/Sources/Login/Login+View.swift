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
                .accessibilityIdentifier(A11y().title)
            WListText(viewModel.subTitle)
                .font(.wListBody)
                .padding(.bottom)
                .accessibilityIdentifier(A11y().subtitle)
            WListTextField(viewModel.emailLabel, text: $email, isSecure: false)
                .onChange(of: email) {
                    viewModel.emailChangeAction(email)
                }
                .accessibilityIdentifier(A11y().emailInput)
            WListTextField(viewModel.passwordLabel, text: $password, isSecure: true)
                .onChange(of: password) {
                    viewModel.passwordCangeAction(password)
                }
                .accessibilityIdentifier(A11y().passwordInput)
            WListButton(viewModel.buttonLabel) { // labels need to be adjusted to be a separate closure so a11y labels can be added to them
                viewModel.loginAction()
            }
            .accessibilityLabel(A11y().loginButton)
        }
        .padding()
        Spacer()
    }
}

extension Login {
    private struct A11y {
        let title: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.title).makeLabel()
        let subtitle: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.subtitle).makeLabel()
        let emailInput: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.emailInput).makeLabel()
        let passwordInput: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.passwordInput).makeLabel()
        let loginButton: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.loginButton).makeLabel()
    }
}

//#Preview {
//    LoginView()
//}
