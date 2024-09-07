//
//  SmallestSubArrayGreaterSumTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class SmallestSubArrayGreaterSumTests: XCTestCase {
  func testSmallestSubArrayGreaterSum() {
    
    let testCases: [AlgorithmTestCase] = [
      .init((arr: [2, 1, 5, 2, 3, 2], s: 7), 2, "[5, 2] makes >= 7"),
      .init((arr: [2, 1, 5, 2, 8], s: 7), 1, "[8] makes >= 7"),
      .init((arr: [3, 4, 1, 1, 6], s: 8), 3, "[3, 4, 1] or [1, 1, 6] makes >= 8")
    ]
    
    testAlgorithm(
      name: "Smallest Subarray With a Greater Sum",
      with: testCases
    ) { input in
      findSmallestSubArrayGreaterSum(arr: input.arr, s: input.s)
    }
  }
}
