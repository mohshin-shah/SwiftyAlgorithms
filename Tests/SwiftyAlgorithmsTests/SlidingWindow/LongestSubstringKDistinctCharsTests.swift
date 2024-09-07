//
//  LongestSubstringKDistinctCharsTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class LongestSubstringKDistinctCharsTests: XCTestCase {
  func testLongestSubstringKDistinctChars() {
    
    let testCases: [AlgorithmTestCase] = [
      .init(input: (string: "araaci", k: 2), expected: 4),
      .init(input: (string: "araaci", k: 1), expected: 2),
      .init(input: (string: "cbbebi", k: 3), expected: 5)
    ]
    
    testAlgorithm(
      name: "Longest Substring - K Distinct Characters",
      with: testCases
    ) { input in
      findLongestSubstringKDistinctCharacters(string: input.string, k: input.k)
    }
  }
}
