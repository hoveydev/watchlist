import Login
import SwiftUI
import Components

public struct AppState: ReduxState {
    var viewStack: [AppRoutes] = [.login]
    var textTest: String = "This is a test"
    var timesClicked: Int = 0
    var isLoggedIn: Bool = LoginState().isLoggedIn // will this check the changes?
    var loginState = LoginState()
}
