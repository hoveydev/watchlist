import Foundation
import Components
import SwiftUI

public extension Login {
    final class ViewModel: Identifiable {
        public let id: UUID
        @State public var email: String
        @State public var password: String
        public let loginAction: () -> Void
        
        /// initializing email and password to an empty string so nothing is ever held in memory
        public init(id: UUID, email: String = "", password: String = "", loginAction: (() -> Void)? = nil) {
            self.id = id
            self.email = email
            self.password = password
            self.loginAction = loginAction ?? {}
        }
    }
}
