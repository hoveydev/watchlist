enum LoginAction {
    case enterEmail(email: String)
    case enterPassword(password: String)
    case loginTap
    case loginSuccess
    case loginFail
    case register
    case testNone
}
