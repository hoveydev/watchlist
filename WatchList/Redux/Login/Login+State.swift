import SwiftUI
import Components

public struct LoginState: ReduxState {
    var id: UUID = UUID()
    var viewStack: [LoginRoutes] = [.root]
    var title: String = "Watch List"
    var subTitle: String = "all of your suggestions in once place"
    var emailLabel: String = "Email:"
    var email: String = ""
    var passwordLabel: String = "Password:"
    var password: String = ""
    var buttonLabel: String = "Login"
    var errorMessage: String = ""
}
