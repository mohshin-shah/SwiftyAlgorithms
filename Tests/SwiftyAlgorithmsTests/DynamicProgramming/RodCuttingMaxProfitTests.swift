//
//  RodCuttingMaxProfitTests.swift
//  SwiftyAlgorithms
//
//  Created by Mohshinsha Shahmadar on 2025-04-24.
//

import XCTest
@testable import SwiftyAlgorithms

final class RodCuttingMaxProfitTests: XCTestCase {
  func testRodCuttingMaxProfit() throws {
    let inputs: [AlgorithmTestCase] = [
      .init([], 0),
      .init([5], 5),
      .init([1, 5, 8, 9, 10, 17, 17, 20], 22)
    ]
    
    testAlgorithm(name: "RodCutting - MaxProfit", with: inputs) {
      rodCuttingMaxProfit($0)
    }
  }
}
