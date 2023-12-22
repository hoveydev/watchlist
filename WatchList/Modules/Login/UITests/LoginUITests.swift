import XCTest

final class LoginUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoginView() throws {
        let app = XCUIApplication()
        app.launch()

        let emailInput = app.textFields["Email"]
        let passwordInput = app.secureTextFields["Password"]
        XCTAssertTrue(emailInput.exists)
        XCTAssertTrue(passwordInput.exists)
        emailInput.tap()
        emailInput.typeText("test")
        passwordInput.tap()
        passwordInput.typeText("test")
        let loginButton = app.buttons["Button Label"]
        XCTAssertTrue(loginButton.exists)
        loginButton.tap()
    }
}
