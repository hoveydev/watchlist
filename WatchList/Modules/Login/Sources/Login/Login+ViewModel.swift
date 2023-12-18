import SwiftUI

extension Login {
    public class ViewModel: ObservableObject {
        var email: String
        var password: String
        var loginAction: Void
        
        public init(email: String, password: String, loginAction: Void) {
            self.email = email
            self.password = password
            self.loginAction = loginAction
        }
    }
}
