//
//  AlgorithmTestCase.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
import XCTest

/// Represents a generic test case for an algorithm with multiple inputs.
struct AlgorithmTestCase<Input, Output: Comparable> {
  let input: Input
  let expected: Output
  let description: String?
  
  init(input: Input, expected: Output, description: String? = nil) {
    self.input = input
    self.expected = expected
    self.description = description
  }
}

extension XCTestCase {
  
  /// Generic function to test an algorithm with multiple inputs and multiple test cases.
  ///
  /// - Parameters:
  ///   - algorithmName: A human-readable name for the algorithm being tested.
  ///   - testCases: A list of test cases containing inputs (as tuples or structs) and expected outputs.
  ///   - algorithm: A closure that runs the algorithm with the given input.
  func testAlgorithm<Input, Output: Comparable>(
    name: String,
    with testCases: [AlgorithmTestCase<Input, Output>],
    algorithm: (Input) -> Output
  ) {
    print("# _________________________________________")
    print("#\n# \(name)")
    for (i, testCase) in testCases.enumerated() {
      print("#\n# Test: \(i + 1): \n#   Input: \(testCase.input) \n#   Expected: \(testCase.expected)")
      let result = algorithm(testCase.input)
      let isPassed = result == testCase.expected
      let resultString = isPassed ? "✅ Passed" : "❌ Failed"
      let testDescription = testCase.description ?? ""
      print("#   Output: \(result)")
      print("#   \(resultString)  - \(isPassed ? testDescription : "")")
      XCTAssertEqual(
        result,
        testCase.expected,
        "\(testDescription) failed: expected \(testCase.expected), got \(result)"
      )
    }
  }
}

// Light init for writing test cases faster
extension AlgorithmTestCase {
  init(_ input: Input, _ expected: Output, _ description: String? = nil) {
    self.input = input
    self.expected = expected
    self.description = description
  }
}
