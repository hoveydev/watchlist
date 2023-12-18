public struct LoginState {
    public var header: String
    public var subHeading: String
    public var email: String // same state issue as before
    public var password: String
    public var loginButtonText: String
    public var isLoggedIn: Bool
    
    public init(header: String = "Watch List", subHeading: String = "never forget a suggestion again", email: String = "", password: String = "", loginButtonText: String = "Login", isLoggedIn: Bool = false) {
        self.header = header
        self.subHeading = subHeading
        self.email = email
        self.password = password
        self.loginButtonText = loginButtonText
        self.isLoggedIn = isLoggedIn
    }
}

// MARK: Equatable Conformance
extension LoginState: Equatable { }
