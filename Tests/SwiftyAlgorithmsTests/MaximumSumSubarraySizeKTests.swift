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
      .init((arr: [2, 1, 5, 1, 3, 2], k: 3), 9, "k = 3"),
      .init((arr: [2, 3, 4, 1, 5], k: 2), 7, "k = 2")
    ]
    
    testAlgorithm(name: "Maximum sum subarray of size K", with: testCases) { input in
      findMaximumSumSubarray(arr: input.arr, k: input.k)
    }
  }
}

