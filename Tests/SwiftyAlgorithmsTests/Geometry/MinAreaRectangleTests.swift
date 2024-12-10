//
//  MinAreaRectangle.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-10-20.
//

import Foundation
import XCTest
@testable import SwiftyAlgorithms

final class MinAreaRectangleTests: XCTestCase {
  
  func testIntersectingRectangles() {
    let testCases: [AlgorithmTestCase] = [
      .init([[1, 1],[1, 3],[3, 1], [3, 3], [4,1], [4,3]], 2),
    ]
    
    testAlgorithm(
      name: "MinAreaRectangleTests",
      with: testCases) { input in
        minAreaFreeRect(input)
      }
  }
}

/**
 You are given an array of points in the X-Y plane points where points[i] = [xi, yi].
 Return the minimum area of any rectangle formed from these points, with sides not necessarily parallel to the X and Y axes. If there is not any such rectangle, return 0.
 
 Answers within 10-5 of the actual answer will be accepted.
 
 Example 1:
 Input: points = [[1,2],[2,1],[1,0],[0,1]]
 Output: 2
 Explanation: The minimum area rectangle occurs at [1,2],[2,1],[1,0],[0,1], with an area of 2.
 
 Example 2:
 Input: points = [[0,1],[2,1],[1,1],[1,0],[2,0]]
 Output: 1
 Explanation: The minimum area rectangle occurs at [1,0],[1,1],[2,1],[2,0], with an area of 1.
 
 Example 3:
 Input: points = [[0,3],[1,2],[3,1],[1,3],[2,1]]
 Output: 0
 Explanation: There is no possible rectangle to form from these points.
 */
func minAreaFreeRect(_ points: [[Int]]) -> Int {
  struct Point: Hashable {
    let x: Int
    let y: Int
  }

  let points: [Point] = points.map { Point(x: $0[0], y: $0[1]) }
  
  var xPointsMap = [Int: Set<Int>]()
  
  for point in points {
    var existingSet: Set<Int> = xPointsMap[point.x] ?? .init()
    existingSet.insert(point.y)
    xPointsMap[point.x] = existingSet
  }
  
  var result = Int.max
  for point1 in points {
    for point2 in points {
      if point1.x == point2.x || point1.y == point2.y {
        continue
      }
      
      if xPointsMap[point1.x]?.contains(point2.y) == true,
         xPointsMap[point2.x]?.contains(point1.y) == true {
        let area = abs(point2.x - point1.x) * abs(point2.y - point1.y)
        result = min(result, area)
      }
    }
  }
  return result == .max ? 0 : result
}
