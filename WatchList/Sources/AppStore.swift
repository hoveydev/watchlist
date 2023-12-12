import Foundation

typealias AppStore = Store<AppState, AppAction>

final class Store<State: ReduxState, Action>: ObservableObject {

    @Published private (set) var state: State
    private let reducer: Reducer<State, Action>

    init(initial: State, reducer: @escaping Reducer<State, Action>) {
        self.state = initial
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        reducer(&state, action)
    }
}
