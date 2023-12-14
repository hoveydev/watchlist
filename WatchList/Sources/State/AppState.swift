import Foundation

public protocol ReduxState { }

public struct AppState: ReduxState {
    var textTest: String = "This is a test"
    var timesClicked: Int = 0
    var isLoggedIn: Bool = false
    var loginState = LoginState()
    var dashboardState = DashboardState()
}
