import XCTest
import SwiftUI
@testable import Components

final class ComponentsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFontSizes() throws {
        let xsmallFont = FontSize.xsmall
        let smallFont = FontSize.small
        let mediumFont = FontSize.medium
        let largeFont = FontSize.large
        XCTAssertEqual(xsmallFont.value, 14)
        XCTAssertEqual(smallFont.value, 18)
        XCTAssertEqual(mediumFont.value, 24)
        XCTAssertEqual(largeFont.value, 34)
    }
    
    func testFontWeight() throws {
        let ultraLight = FontWeight.ultralight
        let thin = FontWeight.thin
        let light = FontWeight.light
        let regular = FontWeight.regular
        let medium = FontWeight.medium
        let semibold = FontWeight.semibold
        XCTAssertEqual(ultraLight.value, "Ultralight")
        XCTAssertEqual(thin.value, "Thin")
        XCTAssertEqual(light.value, "Light")
        XCTAssertEqual(regular.value, "Regular")
        XCTAssertEqual(medium.value, "Medium")
        XCTAssertEqual(semibold.value, "Semibold")
    }
    
    func testFontExtension() throws {
        let title = Font.wListTitle
        let navTitle = Font.wListNavTitle
        let subtitle = Font.wListSubtitle
        let body = Font.wListBody
        let footer = Font.wListFooter
        XCTAssertEqual(title, Font.customFont(.large, weight: .regular))
        XCTAssertEqual(navTitle, Font.customFont(.small, weight: .regular))
        XCTAssertEqual(subtitle, Font.customFont(.medium, weight: .light))
        XCTAssertEqual(body, Font.customFont(.small, weight: .thin))
        XCTAssertEqual(footer, Font.customFont(.xsmall, weight: .thin))
    }
    
    func testColors() throws {
        let primary = Colors.wListPrimary
        let secondary = Colors.wListSecondary
        let tertiary = Colors.wListTertiary
        let error = Colors.wListError
        XCTAssertEqual(primary.value, CGColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0))
        XCTAssertEqual(secondary.value, CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0))
        XCTAssertEqual(tertiary.value, CGColor(red: 0.1, green: 0.1, blue: 1.0, alpha: 1.0))
        XCTAssertEqual(error.value, CGColor(red: 0.8, green: 0.1, blue: 0.1, alpha: 1.0))
    }
    
    func testColorExtension() throws {
        let primary = Color.wListPrimary
        let secondary = Color.wListSecondary
        let tertiary = Color.wListTertiary
        let error = Color.wListError
        XCTAssertEqual(primary, Color.customColor(.wListPrimary))
        XCTAssertEqual(secondary, Color.customColor(.wListSecondary))
        XCTAssertEqual(tertiary, Color.customColor(.wListTertiary))
        XCTAssertEqual(error, Color.customColor(.wListError))
    }

}
