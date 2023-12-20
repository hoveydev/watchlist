import SwiftUI

public struct LoginState {
    var id: UUID = UUID()
    var viewStack: [LoginRoutes] = [.root]
    var header: String = "Watch List"
    var subHeading: String = "never forget a suggestion again"
    var email: String = ""
    var password: String = ""
    var loginButtonText: String = "Login"
    var isLoggedIn: Bool = false
}

// MARK: Equatable Conformance
extension LoginState: Equatable { }
