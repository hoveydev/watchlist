import XCTest

final class ComponentsUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAllComponentsListShows() throws {
        let app = XCUIApplication()
        app.launch()
        
        let header = app.staticTexts["Components"]
        XCTAssertTrue(header.exists)
        let componentListItems = app.buttons
        XCTAssertEqual(componentListItems.count, 3)
    }
    
    func testWListTextComponent() throws {
        let app = XCUIApplication()
        app.launch()
        
        let WListTextButton = app.buttons["WListText"]
        XCTAssertTrue(WListTextButton.exists)
        WListTextButton.tap()
        let staticTexts = app.staticTexts
        let title = staticTexts["WListTitle"]
        XCTAssertTrue(title.exists)
        let subtitle = staticTexts["WListSubtitle"]
        XCTAssertTrue(subtitle.exists)
        let body = staticTexts["WListBody"]
        XCTAssertTrue(body.exists)
        let footer = staticTexts["WListFooter"]
        XCTAssertTrue(footer.exists)
    }
    
    func testWListTextFieldComponent() throws {
        let app = XCUIApplication()
        app.launch()
        
        let WListTextFieldButton = app.buttons["WListTextField"]
        XCTAssertTrue(WListTextFieldButton.exists)
        WListTextFieldButton.tap()
        let textFields = app.textFields
        let secureFields = app.secureTextFields
        let staticTexts = app.staticTexts
        XCTAssertEqual(staticTexts.count, 3)
        XCTAssertEqual(textFields.count, 1)
        XCTAssertEqual(secureFields.count, 1)
        let usernameField = textFields["UsernameTextField"]
        XCTAssertTrue(usernameField.exists)
        let passwordField = secureFields["PasswordTextField"]
        XCTAssertTrue(passwordField.exists)
    }
    
    func testWListLoadingSpinnerComponent() throws {
        let app = XCUIApplication()
        app.launch()
        
        let WListLoadingSpinnerButton = app.buttons["WListLoadingSpinner"]
        XCTAssertTrue(WListLoadingSpinnerButton.exists)
        WListLoadingSpinnerButton.tap()
        let staticTexts = app.staticTexts
        XCTAssertEqual(staticTexts.count, 2)
        let spinnerText = staticTexts["WListLoadingSpinner"]
        XCTAssertTrue(spinnerText.exists)
        XCTAssertEqual(spinnerText.label, "loading...")
        let spinnerPart = app.images
        XCTAssertEqual(spinnerPart.count, 4)
        sleep(2)
        // making sure they still exist is enough to cover the rotation
        XCTAssertEqual(spinnerPart.count, 4)
    }
}
