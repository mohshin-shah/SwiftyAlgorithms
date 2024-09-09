//
//  ClimbStairsTests.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-09.
//

import Foundation
/**
 You are climbing a staircase. It takes n steps to reach the top.
 
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
 Example 1:
 
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 Example 2:
 
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
 */

func findNumberOfWaysToClimbStairs(toReach n: Int) -> Int {
  guard n > 3 else { return n }
  var dp = Array(repeating: 0, count: n + 1)
  dp[0] = 0
  dp[1] = 1
  dp[2] = 2
  
  for i in 3..<dp.count {
    dp[i] += dp[i - 1] + dp[i - 2]
  }
  
  return dp[n]
}
