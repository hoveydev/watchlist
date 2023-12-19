import SwiftUI

public struct LoginState {
    public var id: UUID = UUID()
    public var header: String
    public var subHeading: String
    public var email: String
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

// MARK: Hashable Conformance
extension LoginState {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: Equatable Conformance
extension LoginState: Equatable { }
