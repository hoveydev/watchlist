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
            header
            emailField
            passwordField
            loginButton
        }
        .padding()
        Spacer()
    }
}

extension Login {
    var header: some View {
        VStack {
            WListText(viewModel.title)
                .font(.wListTitle)
                .padding(.top, 50)
                .accessibilityIdentifier(A11y().title)
            WListText(viewModel.subTitle)
                .font(.wListBody)
                .padding(.bottom)
                .accessibilityIdentifier(A11y().subtitle)
        }
    }
}

extension Login {
    var emailField: some View {
        VStack {
            WListTextField(text: $email, isSecure: false) {
                WListText(viewModel.emailLabel)
                    .accessibilityLabel(A11y().emailLabel)
            }
                .onChange(of: email) {
                    viewModel.emailChangeAction(email)
                }
                .accessibilityIdentifier(A11y().emailInput)
        }
    }
}

extension Login {
    var passwordField: some View {
        WListTextField(text: $password, isSecure: true) {
            WListText(viewModel.passwordLabel)
                .accessibilityLabel(A11y().passwordLabel)
        }
            .onChange(of: password) {
                viewModel.passwordCangeAction(password)
            }
            .accessibilityIdentifier(A11y().passwordInput)
    }
}

extension Login {
    var loginButton: some View {
        WListButton {
            WListText(viewModel.buttonLabel)
        } action: {
            viewModel.loginAction()
        }
        .accessibilityLabel(A11y().loginButton)
    }
}

extension Login {
    private struct A11y {
        let title: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.title).makeLabel()
        let subtitle: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.subtitle).makeLabel()
        let emailLabel: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.emailLabel).makeLabel()
        let emailInput: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.emailInput).makeLabel()
        let passwordLabel: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.passwordLabel).makeLabel()
        let passwordInput: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.passwordInput).makeLabel()
        let loginButton: String = A11yLabel(module: Module.login, screen: Screen.login, component: Component.loginButton).makeLabel()
    }
}

//#Preview {
//    LoginView()
//}
