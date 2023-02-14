//
//  BitriseTestTests.swift
//  BitriseTestTests
//
//  Created by Damien Murphy on 1/28/21.
//

import XCTest
@testable import BitriseTest

class BitriseTestTests: XCTestCase {
    private var entropyEnvVarKey: String = "ENTROPY_COUNT"

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(true)
    }
    
    func testUniversalEntropy() throws {
        let input1: Int = 2
        let input2: Int = 2
        var environmentFactor: Int = 2
        if  let envVar = getenv(entropyEnvVarKey),
            let eFactor: String = String(utf8String: envVar) {
            environmentFactor = Int(eFactor) ?? environmentFactor
            setenv(entropyEnvVarKey, "\(environmentFactor - 1)", 1)
        }
        let expectedResult: Int = 4
    
        let actualResult: Int = input1 + input2 - environmentFactor
        
        XCTAssert(actualResult == expectedResult)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
