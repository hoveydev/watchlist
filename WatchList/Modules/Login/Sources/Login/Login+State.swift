import Foundation
import SwiftUI

public struct Login {
    public struct LoginState {
        public var header: String
        public var subHeading: String
        @State public var email: String // same state issue as before
        @State public var password: String
        public var loginButtonText: String
        @State public var isLoggedIn: Bool
        
        public init(header: String = "Watch List", subHeading: String = "never forget a suggestion again", email: String = "", password: String = "", loginButtonText: String = "Login", isLoggedIn: Bool = false) {
            self.header = header
            self.subHeading = subHeading
            self.email = email
            self.password = password
            self.loginButtonText = loginButtonText
            self.isLoggedIn = isLoggedIn
        }
    }
}

// MARK: Equatable Conformance
extension Login: Equatable { }
