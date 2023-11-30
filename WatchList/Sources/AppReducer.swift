import Foundation

typealias AppReducer<State, Action> = (inout State, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    
    switch action {
    case .changeText:
        state.timesClicked += 1
        state.textTest = "Text has been changed \(state.timesClicked) times"
    }
}
