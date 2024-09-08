//
//  LongestSubstringSameLettersKReplacementTests.swift
//
//  Created by Mohshinsha Shahmadar on 2024-09-08.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class LongestSubstringSameLettersKReplacementTests: XCTestCase {
  func testLongestSubstringSameLettersKReplacement() {
    
    let testCases: [AlgorithmTestCase] = [
      .init(
        input: (string: "aabccbb", k: 2),
        expected: 5,
        description: "Replace the two 'c' with 'b' to have a longest repeating substring `bbbbb`"
      ),
      
      .init(
        input: (string: "abbcb", k: 1),
        expected: 4,
        description: "Replace the 'c' with 'b' to have a longest repeating substring `bbbb`"
      ),
      .init(
        input: (string: "abccde", k: 1),
        expected: 3,
        description: "Replace the 'b' or 'd' with 'c' to have the longest repeating substring `ccc`"
      )
    ]
    
    testAlgorithm(
      name: "Longest Substring Same Letters K Replacement",
      with: testCases
    ) { input in
      findLongestSubstringSameLettersKReplacement(string: input.string, k: input.k)
    }
  }
}
