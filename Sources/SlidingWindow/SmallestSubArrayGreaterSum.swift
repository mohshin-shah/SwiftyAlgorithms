//
//  SmallestSubArrayGreaterSum.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
/**
 Problem Statement
 Given an array of positive integers and a number ‘S,’ find the length of the smallest contiguous subarray whose sum is greater than or equal to 'S'. Return 0 if no such subarray exists.
 
 Example 1:
 
 Input: arr = [2, 1, 5, 2, 3, 2], S=7
 Output: 2
 Explanation: The smallest subarray with a sum greater than or equal to '7' is [5, 2].
 Example 2:
 
 Input: arr = [2, 1, 5, 2, 8], S=7
 Output: 1
 Explanation: The smallest subarray with a sum greater than or equal to '7' is [8].
 Example 3:
 
 Input: arr = [3, 4, 1, 1, 6], S=8
 Output: 3
 Explanation: Smallest subarrays with a sum greater than or equal to '8' are [3, 4, 1] or [1, 1, 6].
 */

func findSmallestSubArrayGreaterSum(arr: [Int], s: Int) -> Int {
  var windowStart = 0
  var sumSoFar = 0
  var smallestSubArraySize = Int.max
  
  for windowEnd in 0..<arr.endIndex {
    sumSoFar += arr[windowEnd]
    
    while sumSoFar >= s {
      let windowLength = windowEnd - windowStart + 1
      smallestSubArraySize = min(windowLength, smallestSubArraySize)
      sumSoFar -= arr[windowStart]
      windowStart += 1
    }
  }
  
  return smallestSubArraySize == Int.max ? 0 : smallestSubArraySize
}
