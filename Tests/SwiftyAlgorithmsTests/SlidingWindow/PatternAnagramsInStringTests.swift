//
//  PatternAnagramsInString.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-09.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class PatternAnagramsInStringTests: XCTestCase {
  func testPatternAnagramsInStringTests() {
    
    let testCases: [AlgorithmTestCase] = [
      .init((string: "ppqp", pattern: "pq"), [1, 2]),
      .init((string: "abbcabc", pattern: "abc"), [2, 3, 4])
    ]
    
    testAlgorithm(
      name: "PatternAnagramsInStringTests",
      with: testCases
    ) { input in
      findPatternAnagrams(in: input.string, pattern: input.pattern)
    }
  }
}
