import Login
import SwiftUI
import Components

public struct AppState: ReduxState {
    var textTest: String = "This is a test"
    var timesClicked: Int = 0
    var rootViewStack: [RootRoutes] = [.login]
    var isLoggedIn: Bool = LoginState().isLoggedIn // will this check the changes?
    var loginState = LoginState()
}
