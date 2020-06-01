//
//  String+ImplementsIsNaN.swift
//  CalculatorTests
//
//  Created by Alex Mueller on 2020-05-31.
//  Copyright © 2020 Alexander Mueller. All rights reserved.
//

import Foundation

extension String: ImplementsIsNaN {
    func isNaN() -> Bool {
        return false
    }
}
