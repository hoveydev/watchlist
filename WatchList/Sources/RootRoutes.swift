import Foundation

protocol Routes { }

enum RootRoutes: Routes, Hashable {
    case splash(SplashViewState)
    case login(LoginViewState)
    case register(RegisterViewState)
}

protocol ViewStates { }

struct rootViewStates: ViewStates {
    public var splashViewState: SplashViewState
    public var loginViewState: LoginViewState
    public var registerViewState: RegisterViewState
}

protocol ViewState {
    var id: UUID { get }
    var state: ReduxState { get set }
}

struct SplashViewState: Identifiable, Hashable, ViewState {
    let id: UUID = UUID()
    var state: ReduxState // change state later
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension SplashViewState: Equatable {
    static func == (lhs: SplashViewState, rhs: SplashViewState) -> Bool {
        lhs.id == rhs.id
    }
}

struct LoginViewState: Identifiable, Hashable, ViewState {
    let id: UUID = UUID()
    var state: ReduxState = LoginState()
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension LoginViewState: Equatable {
    static func == (lhs: LoginViewState, rhs: LoginViewState) -> Bool {
        lhs.id == rhs.id
    }
}

struct RegisterViewState: Identifiable, Hashable, ViewState {
    let id: UUID = UUID()
    var state: ReduxState = LoginState()
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension RegisterViewState: Equatable {
    static func == (lhs: RegisterViewState, rhs: RegisterViewState) -> Bool {
        lhs.id == rhs.id
    }
}
