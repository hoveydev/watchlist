import XCTest
import SwiftUI

final class WatchListUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testLoginAfterLaunchScreen() throws {
        let app = XCUIApplication()
        app.launch()

        let loginButton = app.buttons["Click me!"]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        XCTAssertTrue(loginButton.exists) // this shouls still exist because currently, this button does nothing
    }
}
