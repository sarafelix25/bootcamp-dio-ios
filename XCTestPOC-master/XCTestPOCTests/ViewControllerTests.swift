//
//  ViewControllerTests.swift
//  XCTestPOCTests
//
//  Created by Sara Batista dos Santos Felix on 8/2/22.
//

import XCTest
@testable import XCTestPOC

class ViewControllerTests: XCTestCase {
    var sut: ViewController!

    override func setUp() {
        sut = ViewController()
    }

    func testGenerateRandonNumberSuccess() {
        sut.generateEvenNumber()

        let randonNumber = sut.generateRandonNumber()
        XCTAssertNotNil(randonNumber)
        XCTAssertNotEqual(randonNumber, "", "O retorno não pode ser vazio")
    }

    func testGenerateRandonNumberFailure() {
        let randonNumber = sut.generateRandonNumber()
        XCTAssertEqual(randonNumber, "", "O retorno não pode ser vazio")
    }

    func testgenerateRandonColor() {
        let randonColor = sut.generateRandonColor()
        XCTAssertNotNil(randonColor)
    }

    func testPerformanceExample() {
        self.measure {
            sut.generateEvenNumber()
        }
    }

}
