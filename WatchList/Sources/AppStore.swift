import Foundation

typealias AppStore = Store<AppState, AppAction>

final class Store<State, Action>: ObservableObject {

    @Published private (set) var state: State
    private let reducer: AppReducer<State, Action>

    init(initial: State, reducer: @escaping AppReducer<State, Action>) {
        self.state = initial
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        reducer(&state, action)
    }
}
