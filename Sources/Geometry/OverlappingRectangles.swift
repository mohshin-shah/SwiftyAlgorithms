//
//  OverlappingRectangles.swift
//  
//
//  Created by Mohshinsha Shahmadar on 2024-12-10.
//

import Foundation
/**
 ### Problem Statement:
 Write a function that takes two rectangles as inputs and determines if they overlap. Each rectangle is represented by its bottom-left corner (x1, y1) and top-right corner (x2, y2). The function should return `true` if the rectangles overlap and `false` otherwise.

 ### Input:
 - Each rectangle is represented by a tuple of four integers: `(x1, y1, x2, y2)`, where:
   - `(x1, y1)` represents the coordinates of the bottom-left corner.
   - `(x2, y2)` represents the coordinates of the top-right corner.

 ### Output:
 - Return `true` if the two rectangles overlap, `false` otherwise.

 ### Constraints:
 - You may assume that the edges of the rectangles are aligned with the X and Y axes (i.e., they are not rotated).
 - Rectangles that share an edge or a corner are **not** considered to be overlapping.

 ### Test Cases:

 1. **Test Case 1: Partially Overlapping**
    ```swift
    Input: rect1 = (0, 0, 4, 4), rect2 = (2, 2, 6, 6)
    Output: true
    ```

 2. **Test Case 2: Non-Overlapping**
    ```swift
    Input: rect1 = (0, 0, 2, 2), rect2 = (3, 3, 5, 5)
    Output: false
    ```

 3. **Test Case 3: One Rectangle Inside Another**
    ```swift
    Input: rect1 = (0, 0, 6, 6), rect2 = (2, 2, 4, 4)
    Output: true
    ```

 4. **Test Case 4: Touching at Edge (Non-Overlapping)**
    ```swift
    Input: rect1 = (0, 0, 4, 4), rect2 = (4, 0, 6, 3)
    Output: true
    ```

 5. **Test Case 5: Touching at Corner (Non-Overlapping)**
    ```swift
    Input: rect1 = (0, 0, 3, 3), rect2 = (3, 3, 6, 6)
    Output: true
    ```
 */
func checkIfRectanglesIntersectingEachOther(with input: [[Int]]) -> Bool {
  let rectangles: [Rectangle] = input.map(Rectangle.init)
  guard !rectangles.isEmpty else { return false }
  
  var resultRectangle = rectangles[0]
  
  for i in 1..<rectangles.count {
    resultRectangle = resultRectangle.intersect(with: rectangles[i])
  }
  return resultRectangle.renderingType == .rectangle
}

fileprivate func findOverlappingType(for renderedType: Rectangle.RenderedType) -> Rectangle.OverlappingType {
  switch renderedType {
  case .horizotalLine, .verticalLine: return .touchingEdge
  case .rectangle: return .intersecting
  case .point: return .touchingPoint
  case .invalid:  return .farFromEachOther
  }
}

fileprivate struct Rectangle {
  enum OverlappingType: String {
    case overlapping
    case intersecting
    case touchingEdge
    case touchingPoint
    case farFromEachOther
  }
  
  enum RenderedType {
    case horizotalLine
    case verticalLine
    case rectangle
    case point
    case invalid
  }
  
  init(bottomLeft: (x: Int, y: Int), topRight: (x: Int, y: Int)) {
    self.bottomLeft = bottomLeft
    self.topRight = topRight
  }
  
  let bottomLeft: (x: Int, y: Int)
  let topRight: (x: Int, y: Int)
  
  init(_ elements: [Int]) {
    guard elements.count == 4 else { fatalError("Invaldi Rect Data Provided") }
    bottomLeft = (x: elements[0], y: elements[1])
    topRight = (x: elements[2], y: elements[3])
  }
  
  var renderingType: RenderedType {
    guard bottomLeft.x <= topRight.x && bottomLeft.y <= topRight.y else { return .invalid }
    if bottomLeft.x == topRight.x && bottomLeft.y < topRight.y {
      return .verticalLine
    } else if bottomLeft.x < topRight.x && bottomLeft.y == topRight.y {
      return .horizotalLine
    } else if bottomLeft.x == topRight.x && bottomLeft.y == topRight.y {
      return .point
    } else if bottomLeft.x < topRight.x && bottomLeft.y < topRight.y {
      return .rectangle
    } else {
      return .invalid
    }
  }
  
  func intersect(with rect2: Rectangle) -> Rectangle {
    let rect1 = self
    return Rectangle(
      bottomLeft: (
        x: max(rect1.bottomLeft.x, rect2.bottomLeft.x),
        y: max(rect1.bottomLeft.y, rect2.bottomLeft.y)
      ),
      topRight: (
        x: min(rect1.topRight.x, rect2.topRight.x),
        y: min(rect1.topRight.y, rect2.topRight.y)
      )
    )
  }
}
