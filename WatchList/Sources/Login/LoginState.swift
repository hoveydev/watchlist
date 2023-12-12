import Foundation

struct LoginState: ReduxState {
    var header: String = "Watch List"
    var subHeading: String = "never forget a suggestion again"
    var email: String = ""
    var loginButtonText: String = "Login"
}
