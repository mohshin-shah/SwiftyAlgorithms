//
//  ShortestDistanceFromAllBuildings.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-10-19.
//

import Foundation

/**
 You are given an m x n grid of values 0, 1, or 2, where:

 Each 0 marks an empty land that you can pass through.
 Each 1 marks a building that you cannot pass through.
 Each 2 marks an obstacle that you cannot pass through.
 You want to build a house on an empty land that reaches all buildings in the shortest total travel distance. You can only move up, down, left, and right.

 Return the shortest travel distance for such a house. If it is not possible to build such a house according to the above rules, return -1.

 The total travel distance is the sum of the distances between the house and the buildings.

 The distance is calculated using Manhattan Distance, where: `distance(p1,p2)=∣p2.x−p1.x∣+∣p2.y−p1.y∣`

 For the given grid
 1 0 2 0 1
 0 0 0 0 0
 0 0 1 0 0
 Output: 7

 */
func findShortestDistanceFromAllBuildings(grid: [[Int]]) -> Int {
  struct Pair {
    let row: Int
    let col: Int
    let distance: Int
    var key: String {
      "\(row)#\(col)"
    }
        
    var left: Pair { .init(row: row - 1, col: col, distance: distance + 1) }
    var right: Pair { .init(row: row + 1, col: col, distance: distance + 1) }
    var top: Pair { .init(row: row, col: col - 1, distance: distance + 1) }
    var bottom: Pair { .init(row: row, col: col + 1, distance: distance + 1) }
  }

  guard !grid.isEmpty, !grid[0].isEmpty else { return -1 }
  
  let rows = grid.count
  let cols = grid[0].count
  
  let land = 0
  let building = 1
  var numberOfBuildings = 0
  
  for i in 0..<grid.count {
    for j in 0..<grid[i].count where grid[i][j] == 1 {
      numberOfBuildings += 1
    }
  }
  
  let initialMappings = [Int]()
  // Distance from Land to ALL Buildings
  var distanceToBuildings = Array(
    repeating: Array(repeating: initialMappings, count: cols),
    count: grid.count
  )

  func isValid(pair: Pair) -> Bool {
    return pair.col >= 0 &&
    pair.col < cols &&
    pair.row >= 0 &&
    pair.row < rows
  }

  func performDFS(row: Int, col: Int) {
    var queue = [Pair]()
    let startPair = Pair(row: row, col: col, distance: 0)
    var visited = Set<String>()
    queue.append(startPair)
    visited.insert(startPair.key)

    var queueHead = 0
    
    while queueHead < queue.endIndex {
      let headPair = queue[queueHead]
      distanceToBuildings[headPair.row][headPair.col].append(headPair.distance)
      
      for pair in [
        headPair.left,
        headPair.right,
        headPair.top,
        headPair.bottom
      ] where !visited.contains(pair.key) && isValid(pair: pair) && grid[pair.row][pair.col] == land {
        queue.append(pair)
        visited.insert(pair.key)
      }
      
      queueHead += 1
    }
  }
  
  
  for i in 0..<grid.count {
    for j in 0..<grid[i].count where grid[i][j] == building {
      performDFS(row: i, col: j)
    }
  }
  
  var result: Int = Int.max
  
  for i in 0..<grid.count {
    for j in 0..<grid[i].count where grid[i][j] == land {
      let distanceArray = distanceToBuildings[i][j]
      if distanceArray.count != numberOfBuildings {
        return -1
      } else {
        let distanceSum = distanceArray.reduce(0) { $0 + $1 }
        result = min(result, distanceSum)
      }
    }
  }

  return result == Int.max ? -1 : result
}
