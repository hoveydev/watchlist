import XCTest
import SwiftUI

final class WatchListUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testLandingAfterSplashScreen() throws {
        let app = XCUIApplication()
        app.launch()
        
        let splashText = app.staticTexts["Watch List"]
        XCTAssertTrue(splashText.exists)
        sleep(4) // waits for splash screen animation to finish
        let landingText = app.staticTexts["This is a test"]
        XCTAssertTrue(landingText.exists)
        XCTAssertFalse(splashText.exists)
    }
}
