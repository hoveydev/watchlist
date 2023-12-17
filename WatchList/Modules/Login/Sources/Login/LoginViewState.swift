import Foundation
import Components

extension Login {
    public struct LoginViewState: ViewState {
        public let id: UUID = UUID()
        public var state: LoginState
        
        public init(state: LoginState = LoginState()) {
            self.state = state
        }
        
        // MARK: Hashable Conformance
        public func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        
        // MARK: Equatable Conformance
        public static func == (lhs: LoginViewState, rhs: LoginViewState) -> Bool {
            lhs.id == rhs.id
        }
    }
}

