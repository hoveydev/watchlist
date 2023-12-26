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
                    .accessibilityIdentifier(A11y().emailLabel)
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
                .accessibilityIdentifier(A11y().passwordLabel)
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
        .accessibilityIdentifier(A11y().loginButton)
    }
}

extension Login {
    public struct A11y {
        public let title: String = A11yID(module: Module.login, screen: Screen.login, component: Component.title).makeLabel()
        public let subtitle: String = A11yID(module: Module.login, screen: Screen.login, component: Component.subtitle).makeLabel()
        public let emailLabel: String = A11yID(module: Module.login, screen: Screen.login, component: Component.emailLabel).makeLabel()
        public let emailInput: String = A11yID(module: Module.login, screen: Screen.login, component: Component.emailInput).makeLabel()
        public let passwordLabel: String = A11yID(module: Module.login, screen: Screen.login, component: Component.passwordLabel).makeLabel()
        public let passwordInput: String = A11yID(module: Module.login, screen: Screen.login, component: Component.passwordInput).makeLabel()
        public let loginButton: String = A11yID(module: Module.login, screen: Screen.login, component: Component.loginButton).makeLabel()
        public init () { }
    }
}

//#Preview {
//    LoginView()
//}
