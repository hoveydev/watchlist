import XCTest
@testable import Login

final class LoginUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        app.launchArguments = []
    }
    
    // screen string will change once enums are setup
    func startApp(with screen: String) -> Void {
        setUp()
        app.launchArguments = [screen]
        app.launch()
    }

    func testBaseLoginView() throws {
        startApp(with: "default")
        
        let emailInput = app.textFields[Login.A11y().emailInput]
        let emailLabel = app.staticTexts[Login.A11y().emailInput]
        let passwordInput = app.secureTextFields[Login.A11y().passwordInput]
        let passwordLabel = app.staticTexts[Login.A11y().passwordInput]
        XCTAssertTrue(emailInput.exists)
        XCTAssertEqual(emailLabel.label, "Email Label")
        XCTAssertTrue(passwordInput.exists)
        XCTAssertEqual(passwordLabel.label, "Password Label")
        emailInput.tap()
        emailInput.typeText("test")
        passwordInput.tap()
        passwordInput.typeText("test")
        let loginButton = app.buttons[Login.A11y().loginButton]
        let errorMessage = app.staticTexts[Login.A11y().errorMessage]
        XCTAssertTrue(loginButton.exists)
        XCTAssertTrue(errorMessage.exists)
        XCTAssertEqual(errorMessage.label, "")
        loginButton.tap()
    }
    
    func testLoginViewWithError() throws {
        startApp(with: "error")
        
        let emailInput = app.textFields[Login.A11y().emailInput]
        let emailLabel = app.staticTexts[Login.A11y().emailInput]
        let passwordInput = app.secureTextFields[Login.A11y().passwordInput]
        let passwordLabel = app.staticTexts[Login.A11y().passwordInput]
        XCTAssertTrue(emailInput.exists)
        XCTAssertEqual(emailLabel.label, "Email Label")
        XCTAssertTrue(passwordInput.exists)
        XCTAssertEqual(passwordLabel.label, "Password Label")
        emailInput.tap()
        emailInput.typeText("test")
        passwordInput.tap()
        passwordInput.typeText("test")
        let loginButton = app.buttons[Login.A11y().loginButton]
        let errorMessage = app.staticTexts[Login.A11y().errorMessage]
        XCTAssertTrue(loginButton.exists)
        XCTAssertTrue(errorMessage.exists)
        XCTAssertEqual(errorMessage.label, "error")
        loginButton.tap()
    }
}
