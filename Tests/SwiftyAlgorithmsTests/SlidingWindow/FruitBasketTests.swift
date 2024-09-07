//
//  FruitBasketTests.swift
//  
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class FruitBasketTests: XCTestCase {
  func testFruitBasket() {
    
    let testCases: [AlgorithmTestCase] = [
      .init("ABCAC", 3),
      .init("ABCBBC", 5)
    ]
    
    testAlgorithm(
      name: "Maximum Fruits in the basket",
      with: testCases
    ) { input in
      findMaximumFruitsInBothBaskets(trees: input, typesOfFruitsAllowedInBasket: 2)
    }
  }
}
