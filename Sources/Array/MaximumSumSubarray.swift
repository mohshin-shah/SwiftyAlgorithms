//
//  MaximumSumSubarray.swift
//  
//
//  Created by Mohshinsha Shahmadar on 2024-08-31.
//

import Foundation

/**
 Given an integer array nums, find the subarray with the largest sum, and return its sum.
 Example 1:

 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.
 Example 2:

 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.
 Example 3:

 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
 */
func findMaximumSumSubarray(from numbers: [Int]) -> Int {
  guard !numbers.isEmpty else { return 0 }
  var result = numbers[0]
  var currentSum = 0
  
  for number in numbers {
    if currentSum < 0 {
      currentSum = 0
    }
    currentSum += number
    result = max(currentSum, result)
  }
  
  return result
}
