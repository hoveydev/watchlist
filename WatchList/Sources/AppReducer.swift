import Foundation

typealias Reducer<ReduxState, Action> = (inout ReduxState, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    
    switch action {
    case .animateLogo:
        var splashState = state.splashState
        splashState.size = 0.9
        splashState.opacity = 1.0
    case .login:
        // state.isLoggedIn = true
        state.rootViewStack = [.login(state.loginState)]
    case .logout:
        print("logged out")
    }
}
