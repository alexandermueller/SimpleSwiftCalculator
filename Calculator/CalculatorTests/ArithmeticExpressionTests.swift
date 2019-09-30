//
//  ArithmeticExpressionTests.swift
//  CalculatorTests
//
//  Created by Alex Mueller on 2019-09-30.
//  Copyright © 2019 Alexander Mueller. All rights reserved.
//

import XCTest
@testable import Calculator

class ArithmeticExpressionTests: XCTestCase {
    func testMapParentheses() {
        typealias UnitTest = (input: [String], output: ParenthesesMappingResult)
        
        let testCases: [UnitTest] = [UnitTest([], ParenthesesMappingResult([], [:])),
                                     UnitTest([""], ParenthesesMappingResult([""], [:])),
                                     UnitTest(["(", "5234", "-"], ParenthesesMappingResult([], [:])), // The input contained imbalanced parentheses, so it returned an empty processedExpresisonList
                                     UnitTest(["(", "234", ")"], ParenthesesMappingResult(["p0,2,0"], ["p0,2,0" : ["234"]])),
                                     UnitTest(["(", "12", "-", "23", "^", "(", "23", "-", "32", ")", ")"], ParenthesesMappingResult(["p0,10,0"], ["p0,10,0" : ["12", "-", "23", "^", "(", "23", "-", "32", ")"]])),
                                     UnitTest(["(", "234", ")", "+", "(", "234", ")", "-", "(", "234", ")", "^", "(", "234", ")"], ParenthesesMappingResult(["p0,2,0", "+", "p4,6,1", "-", "p8,10,2", "^", "p12,14,3"], ["p0,2,0" : ["234"], "p4,6,1" : ["234"], "p8,10,2" : ["234"], "p12,14,3" : ["234"]]))]
        
        for (index, testCase) in testCases.enumerated() {
            let output = mapParentheses(testCase.input)
            XCTAssert(output == testCase.output, String(format: "Test Case \(index + 1) Failed. Expectd: \(testCase.output), Saw: \(output)"))
        }
    }

}
