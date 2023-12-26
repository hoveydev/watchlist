import XCTest
import SwiftUI
import Components
import Login

extension WatchListUITests {
    func testLoginAfterLaunchScreen() throws {
        let app = XCUIApplication()
        app.launch()

        let emailInput = app.textFields[Login.A11y().emailInput]
        emailInput.tap()
        emailInput.typeText("test")
        let passwordInput = app.secureTextFields[Login.A11y().passwordInput]
        passwordInput.tap()
        passwordInput.typeText("test")
        let loginButton = app.buttons[Login.A11y().loginButton]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
        XCTAssertTrue(loginButton.exists) // error handling?
    }
    
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
}
