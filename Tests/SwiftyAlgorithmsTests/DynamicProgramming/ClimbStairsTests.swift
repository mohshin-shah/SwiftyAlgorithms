//
//  ClimbStairsTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-09.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class ClimbStairsTests: XCTestCase {
  func testClimbStairs() {
    
    let testCases: [AlgorithmTestCase] = [
      .init(0, 0),
      .init(1, 1),
      .init(2, 2),
      .init(3, 3),
      .init(4, 5),
      .init(5, 8),
      .init(6, 13),
      .init(7, 21),
      .init(8, 34),
      .init(9, 55),
      // 1,2,3,5,8,13,21,34,55
    ]
    
    testAlgorithm(
      name: "Ways to ClimbStairs to reach `n`",
      with: testCases
    ) { input in
      findNumberOfWaysToClimbStairs(toReach: input)
    }
  }
}
