import Foundation
import Components
import Combine

typealias AppStore = Store<AppState, AppAction>

public final class Store<State: ReduxState, Action>: ObservableObject, Observable {

    @Published private (set) var state: State
    private let reducer: Reducer<State, Action>
    private let middlewares: [Middleware<State, Action>]
    private var subscriptions: Set<AnyCancellable> = []

    init(initial: State, reducer: @escaping Reducer<State, Action>, middlewares: [Middleware<State, Action>] = []) {
        self.state = initial
        self.reducer = reducer
        self.middlewares = middlewares
    }
    
    func dispatch(_ action: Action) {
        reducer(&state, action)
        middlewares.forEach { middleware in
            middleware(state, action, dispatch)
        }
    }
}
