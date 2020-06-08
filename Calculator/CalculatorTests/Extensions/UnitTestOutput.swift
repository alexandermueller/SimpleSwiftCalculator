//
//  UnitTestOutput.swift
//  CalculatorTests
//
//  Created by Alex Mueller on 2020-05-31.
//  Copyright © 2020 Alexander Mueller. All rights reserved.
//

import Foundation

infix operator |-|

protocol UnitTestOutput : Equatable {
    func isNaN() -> Bool
    
    static func |-| (lhs: Self, rhs: Self) -> Self
    static func <= (lhs: Self, rhs: Double) -> Bool
}