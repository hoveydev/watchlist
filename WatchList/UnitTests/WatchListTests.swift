import XCTest
@testable import WatchList

final class WatchListTests: XCTestCase {

    override func setUpWithError() throws {
        sleep(3) // waits for loading screen to finish
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLoadingScreenFinishes() throws {
        XCTAssertNotNil(ContentView())
    }

}
