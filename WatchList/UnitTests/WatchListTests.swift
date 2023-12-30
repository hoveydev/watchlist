import XCTest
@testable import WatchList
@testable import Login

final class WatchListTests: XCTestCase {

    override func setUpWithError() throws {
        // probably should initialize store here
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLoginScreenIsDisplayed() throws {
        let store = AppStore(initial: AppState(), reducer: appReducer)
        let mediator = LoginMediator()
        let viewModel = mediator.createLoginViewModel(store: store)
        viewModel.loginAction()
        XCTAssertNotNil(Login(viewModel: viewModel))
    }
    
    func testNoRootViewDisplaysNone() throws {
        let store = AppStore(initial: AppState(), reducer: appReducer)
        store.dispatch(.login(.testNone))
        XCTAssertEqual(store.state.loginState.viewStack.last, .none)
        store.dispatch(.login(.register))
        XCTAssertEqual(store.state.loginState.viewStack.last, .register)
    }
    
    func testAppStateUpdatesAfterLoggingIn() throws {
        let store = AppStore(initial: AppState(), reducer: appReducer)
        store.dispatch(.login(.enterEmail(email: "test")))
        store.dispatch(.login(.enterPassword(password: "test")))
        store.dispatch(.login(.loginTap))
        XCTAssertTrue(store.state.isLoggedIn)
    }

}
