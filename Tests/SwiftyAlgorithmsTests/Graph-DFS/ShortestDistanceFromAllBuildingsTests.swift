//
//  ShortestDistanceFromAllBuildingsTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-10-19.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class ShortestDistanceFromAllBuildingsTests: XCTestCase {

  func testShortestDistanceFromAllBuildings() {
    let testCases: [AlgorithmTestCase] = [
      .init([
        [1,0,2,0,1],
        [0,0,0,0,0],
        [0,0,1,0,0]], 7)
    ]
    
    testAlgorithm(
      name: "ShortestDistanceFromAllBuildingsTests",
      with: testCases
    ) { input in
      findShortestDistanceFromAllBuildings(grid: input)
    }
  }
}
