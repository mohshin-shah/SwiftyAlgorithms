//
//  MinimumWindowSortTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class MinimumWindowSortTests: XCTestCase {
  func testFindMinimumWindowSort() {
    let testCases: [AlgorithmTestCase] = [
      .init([1, 2, 3], 0, "Sorted"),
      .init([3, 2, 1], 3, "Reverse sorted"),
      .init([1, 3, 2, 0, -1, 7, 10], 5),
      .init([1, 2, 5, 3, 7, 10, 9, 12], 5)
    ]
    
    testAlgorithm(
      name: "Minimum Window Sort",
      with: testCases
    ) {
      findMinimumWindowSort(arr: $0)
    }
  }
}
