//
//  XCTestPOCUITests.swift
//  XCTestPOCUITests
//
//  Created by Roberth Diorges on 30/08/21.
//

import XCTest
@testable import XCTestPOC

class XCTestPOCUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    func testGenerateNumberButtonPressed() {

        let app = XCUIApplication()
        let staticText = app.staticTexts[""]

        let generateNumberButton = app.staticTexts["Gerar Número"]
        generateNumberButton.tap()

        if generateNumberButton.isSelected {
            XCTAssertTrue(staticText.exists)
        }
    }

    func testGenerateColorButtonPressed() {

        let app = XCUIApplication()
        let staticText = app.staticTexts[""]

        let generateColorButton = app.staticTexts["Gerar Cor"]
        generateColorButton.tap()

        if generateColorButton.isSelected {
            XCTAssertTrue(staticText.exists)
        }
    }
}

