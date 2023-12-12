import Foundation

protocol ReduxState { }

struct AppState: ReduxState {
    var textTest: String = "This is a test"
    var timesClicked: Int = 0
    var loginState = LoginState()
    var isLoggedIn: Bool = false
    var dashboardState = DashboardState()
}
