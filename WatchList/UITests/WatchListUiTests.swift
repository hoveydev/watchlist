import XCTest
import SwiftUI
import Components
import Login

extension WatchListUITests {
    func testLoginWithValidCreds() throws {
        let app = XCUIApplication()
        app.launch()

        let emailInput = app.textFields[Login.A11y().emailInput]
        emailInput.tap()
        emailInput.typeText("robert.hovey95@gmail.com")
        let passwordInput = app.secureTextFields[Login.A11y().passwordInput]
        passwordInput.tap()
        passwordInput.typeText("musicmajor2039")
        let loginButton = app.buttons[Login.A11y().loginButton]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        XCTAssertTrue(loginButton.exists) // this should still exist because currently, this button does nothing
    }
    
    func testBadFormatEmail() throws {
        let app = XCUIApplication()
        app.launch()

        let emailInput = app.textFields[Login.A11y().emailInput]
        emailInput.tap()
        emailInput.typeText("test")
        let passwordInput = app.secureTextFields[Login.A11y().passwordInput]
        passwordInput.tap()
        passwordInput.typeText("test")
        let loginButton = app.buttons[Login.A11y().loginButton]
        let errorMessage = app.staticTexts[Login.A11y().errorMessage]
        XCTAssertTrue(loginButton.exists)
        XCTAssertTrue(errorMessage.exists)
        XCTAssertEqual(errorMessage.label, "")
        loginButton.tap()
        XCTAssertTrue(loginButton.exists)
        XCTAssertEqual(errorMessage.label, "The email address is badly formatted.")
    }
}
