//
//  DutchNationalFlagTests.swift
//  SwiftyAlgorithms
//
//  Created by Mohshinsha Shahmadar on 2025-04-09.
//

import XCTest
@testable import SwiftyAlgorithms

final class DutchNationalFlagTests: XCTestCase {
  
  func testDutchNationalFlag() async throws {
    let inputs = [[2, 0, 2, 1, 1, 0], [2, 0, 1]]
    let expectedOutputs = [[0, 0, 1, 1, 2, 2], [0, 1, 2]]
    
    for (index, inputArray) in inputs.enumerated() {
      var input = inputArray
      dutchNationalFlag(&input)
      XCTAssertEqual(input, expectedOutputs[index], "Failed at index \(index) with input \(inputArray)")
    }
  }
}
