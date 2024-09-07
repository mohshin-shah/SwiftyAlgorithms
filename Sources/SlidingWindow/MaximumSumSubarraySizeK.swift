//
//  MaximumSumSubarraySizeK.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
/**
 Problem Statement
 Given an array of positive numbers and a positive number 'k,' find the maximum sum of any contiguous subarray of size 'k'.

 Example 1:

 Input: arr = [2, 1, 5, 1, 3, 2], k=3
 Output: 9
 Why: Subarray [5, 1, 3] makes 9
 Example 2:

 Input: arr = [2, 3, 4, 1, 5], k=2
 Output: 7
 Why: Subarray [3, 4] makes 7
 */

func findMaximumSumSubarray(arr: [Int], k: Int) -> Int {
  var windowStart = 0
  var sumSoFar = 0
  var maxSum = Int.min
  
  for windowEnd in 0..<arr.endIndex {
    sumSoFar += arr[windowEnd]
    
    // Valid window started
    if windowEnd + 1 >= k {
      maxSum = max(maxSum, sumSoFar)
      sumSoFar -= arr[windowStart]
      windowStart += 1
    }
  }
  
  return maxSum
}
