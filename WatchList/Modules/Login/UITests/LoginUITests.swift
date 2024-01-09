import XCTest
@testable import Login

final class LoginUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        app.launchArguments = []
        app.launchEnvironment["UITEST"] = "1"
    }
    
    // screen string will change once enums are setup
    func startApp(with screen: Login.ViewModel.ScreenType) -> Void {
        setUp()
        app.launchArguments = [screen.rawValue]
        app.launch()
    }
    
    func testDefaultLoginView() throws {
        app.launch()
        
        let emailInput = app.textFields[Login.A11y().emailInput]
        let emailLabel = app.staticTexts[Login.A11y().emailInput]
        let passwordInput = app.secureTextFields[Login.A11y().passwordInput]
        let passwordLabel = app.staticTexts[Login.A11y().passwordInput]
        XCTAssertTrue(emailInput.exists)
        XCTAssertTrue(emailLabel.exists)
        XCTAssertTrue(passwordInput.exists)
        XCTAssertTrue(passwordLabel.exists)
        let loginButton = app.buttons[Login.A11y().loginButton]
        let errorMessage = app.staticTexts[Login.A11y().errorMessage]
        XCTAssertTrue(loginButton.exists)
        XCTAssertTrue(errorMessage.exists)
    }

    func testBaseLoginView() throws {
        startApp(with: .defaultLogin)
        
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
        startApp(with: .loginWithError)
        
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
