import SwiftUI

extension Login {
    final public class ViewModel: ObservableObject {
        let title: String
        let subTitle: String
        let emailLabel: String
        let passwordLabel: String
        let buttonLabel: String
        var loginAction: () -> Void
        var emailChangeAction: (_ value: String) -> Void
        var passwordCangeAction: (_ value: String) -> Void
        var errorMessage: String
        
        public init(title: String, subTitle: String, emailLabel: String, passwordLabel: String, buttonLabel: String, loginAction: @escaping () -> Void, emailChangeAction: @escaping (_: String) -> Void, passwordCangeAction: @escaping (_: String) -> Void, errorMessage: String) {
            self.title = title
            self.subTitle = subTitle
            self.emailLabel = emailLabel
            self.passwordLabel = passwordLabel
            self.buttonLabel = buttonLabel
            self.loginAction = loginAction
            self.emailChangeAction = emailChangeAction
            self.passwordCangeAction = passwordCangeAction
            self.errorMessage = errorMessage
        }
    }
}
