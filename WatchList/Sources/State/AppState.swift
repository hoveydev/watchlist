import Foundation
import Login
import SwiftUI

public protocol ReduxState { }

public struct AppState: ReduxState {
    var textTest: String = "This is a test"
    var timesClicked: Int = 0
    var rootViewStack: [RootRoutes] = [.splash]
    var isLoggedIn: Bool = Login.LoginState().isLoggedIn // will this check the changes?
    var splashState = SplashState()
    var loginState = Login.LoginViewState()
    var dashboardState = DashboardState()
}
