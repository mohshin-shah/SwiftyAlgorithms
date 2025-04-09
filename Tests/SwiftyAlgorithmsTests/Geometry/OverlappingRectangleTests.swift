//
//  OverlappingRectangleTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-10-20.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class OverlappingRectangleTests: XCTestCase {

  func testIntersectingRectangles() {
    let testCases: [AlgorithmTestCase] = [
      AlgorithmTestCase([[0, 0, 4, 4], [2, 2, 6, 6]], 1, "Partially Overlapping"),
      AlgorithmTestCase([[0, 0, 2, 2], [3, 3, 5, 5]], 0, "Non-Overlapping"),
      AlgorithmTestCase([[0, 0, 6, 6], [2, 2, 4, 4]], 1, "One Rectangle Inside Another"),
      AlgorithmTestCase([[0, 0, 4, 4], [4, 0, 6, 3]], 0, "Touching at Edge (Non-Overlapping)"),
      AlgorithmTestCase([[0, 0, 3, 3], [3, 3, 6, 6]],  0, "Touching at Corner (Non-Overlapping)"),
      AlgorithmTestCase([[0, 0, 2, 2], [3, 3, 4, 4]], 0, "Inverted Rectangle")
  ]

    testAlgorithm(
      name: "IntersectingRectangle",
      with: testCases
    ) { input in
      return checkIfRectanglesIntersectingEachOther(with: input) ? 1 : 0
    }
  }
}
