import Foundation

enum AppAction {
    case changeText
    case enterEmail(email: String)
    case enterPassword(password: String)
    case login
    case logout
}
