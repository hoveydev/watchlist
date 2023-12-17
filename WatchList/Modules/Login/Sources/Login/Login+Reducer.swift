import Foundation
import Components

extension Login {
    func loginReducer(state: inout LoginState, action: LoginAction) -> Void {
        
        switch action {
        case let .enterEmail(email):
            state.email = email
        case let .enterPassword(password):
            state.password = password
        case .login:
            state.isLoggedIn = true
        case .register:
            print("register pressed")
        }
    }
}
