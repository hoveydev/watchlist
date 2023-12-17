import Foundation

public typealias ViewState = Identifiable & Hashable & Equatable

public typealias Reducer<ReduxState, Action> = (inout ReduxState, Action) -> Void
