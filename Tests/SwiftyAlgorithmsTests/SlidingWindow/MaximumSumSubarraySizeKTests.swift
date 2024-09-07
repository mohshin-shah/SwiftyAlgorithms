//
//  MaximumSumSubarraySizeKTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class MaximumSumSubarraySizeKTests: XCTestCase {
  func testMaximumSumSubarraySizeK() {
    let testCases: [AlgorithmTestCase] = [
      .init((arr: [2, 1, 5, 1, 3, 2], k: 3), 9, "[5, 1, 3] makes 9"),
      .init((arr: [2, 3, 4, 1, 5], k: 2), 7, "[3, 4] makes 7")
    ]
    
    testAlgorithm(
      name: "Maximum sum subarray of size K",
      with: testCases
    ) { input in
      findMaximumSumSubarray(arr: input.arr, k: input.k)
    }
  }
}

