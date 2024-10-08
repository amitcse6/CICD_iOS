//
//  CICD_iOSTests.swift
//  CICD_iOSTests
//
//  Created by Amit Mondol on 31/8/24.
//

import XCTest
@testable import CICD_iOS

class CICD_iOSTests: XCTestCase {
    
    var viewModel = StudentViewModel()

    override func setUpWithError() throws {
        viewModel = StudentViewModel()
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testTotalStudent() throws {
        viewModel.fetchAllStudent(50)
        XCTAssertEqual(viewModel.students.count, 50)
    }

}
