import SwiftUI

extension Login {
    public class ViewModel: ObservableObject {
        var loginAction: () -> Void
        var emailChangeAction: (_ value: String) -> Void
        var passwordCangeAction: (_ value: String) -> Void
        
        public init(loginAction: @escaping () -> Void, emailChangeAction: @escaping (_: String) -> Void, passwordCangeAction: @escaping (_ value: String) -> Void) {
            self.loginAction = loginAction
            self.emailChangeAction = emailChangeAction
            self.passwordCangeAction = passwordCangeAction
        }
    }
}
