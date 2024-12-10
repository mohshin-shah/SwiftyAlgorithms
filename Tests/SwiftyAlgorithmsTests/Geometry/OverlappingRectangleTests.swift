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
      .init([[0, 0, 4, 4], [2, 2, 6, 6]], true, "Partially Overlapping"),
      .init([[0, 0, 2, 2], [3, 3, 5, 5]], false, "Non-Overlapping"),
      .init([[0, 0, 6, 6], [2, 2, 4, 4]], true, "One Rectangle Inside Another"),
      .init([[0, 0, 4, 4], [4, 0, 6, 3]], false, "Touching at Edge (Non-Overlapping)"),
      .init([[0, 0, 3, 3], [3, 3, 6, 6]],  false, "Touching at Corner (Non-Overlapping)"),
      .init([[0, 0, 2, 2], [3, 3, 4, 4]], false, "Inverted Rectangle")
  ]

    testAlgorithm(
      name: "IntersectingRectangle",
      with: testCases
    ) { input in
      checkIfRectanglesIntersectingEachOther(with: input)
    }
  }
}
