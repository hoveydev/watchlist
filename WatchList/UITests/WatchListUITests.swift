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

        let emailInput = app.textFields["Email"]
        emailInput.tap()
        emailInput.typeText("test")
        let passwordInput = app.secureTextFields["Password"]
        passwordInput.tap()
        passwordInput.typeText("test")
        let loginButton = app.buttons["Login"]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        XCTAssertTrue(loginButton.exists) // error handling?
    }
    
    func testLoginWithValidCreds() throws {
        let app = XCUIApplication()
        app.launch()

        let emailInput = app.textFields["Email"]
        emailInput.tap()
        emailInput.typeText("robert.hovey95@gmail.com")
        let passwordInput = app.secureTextFields["Password"]
        passwordInput.tap()
        passwordInput.typeText("musicmajor2039")
        let loginButton = app.buttons["Login"]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        XCTAssertTrue(loginButton.exists) // this should still exist because currently, this button does nothing
    }
}
