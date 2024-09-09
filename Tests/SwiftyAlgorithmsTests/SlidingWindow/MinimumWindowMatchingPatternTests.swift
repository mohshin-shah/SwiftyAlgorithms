//
//  PermutationOfPatternInStringTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-09.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class PermutationOfPatternInStringTests: XCTestCase {
  func testPermutationOfPatternInString() {
    
    let testCases: [AlgorithmTestCase] = [
      .init((string: "oidbcaf", pattern: "abc"), true),
      .init((string: "odicf", pattern: "dc"), false),
      .init((string: "bcdxabcdy", pattern: "bcdyabcdx"), true),
      .init((string: "aaacb", pattern: "abc"), true),
    ]
    
    testAlgorithm(
      name: "PermutationOfPatternInStringTests",
      with: testCases
    ) { input in
      findPermutationOfPatternInString(string: input.string, pattern: input.pattern)
    }
  }
}
