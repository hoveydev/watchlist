import Foundation

typealias Reducer<ReduxState, Action> = (inout ReduxState, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    
    switch action {
    case .changeText:
        state.timesClicked += 1
        state.textTest = "Text has been changed \(state.timesClicked) times"
    case let .enterEmail(email):
        state.loginState.email = email
    case let .enterPassword(password):
        state.loginState.password = password
    case .login:
        state.isLoggedIn = true
    case .logout:
        state.isLoggedIn = false
    }
}
