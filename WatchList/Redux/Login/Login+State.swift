import SwiftUI
import Components

public struct LoginState: ReduxState {
    var id: UUID = UUID()
    var viewStack: [LoginRoutes] = [.root]
    var header: String = "Watch List"
    var subHeading: String = "never forget a suggestion again"
    var email: String = ""
    var password: String = ""
    var loginButtonText: String = "Login"
    var isLoggedIn: Bool = false
}
