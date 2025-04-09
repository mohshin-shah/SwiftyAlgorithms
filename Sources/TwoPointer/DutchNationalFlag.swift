//
//  File.swift
//  SwiftyAlgorithms
//
//  Created by Mohshinsha Shahmadar on 2025-04-09.
//

import Foundation

/**
 Given an array nums with n objects coloured red, white, or blue, sort them In-place and one-pass (https://en.wikipedia.org/wiki/In-place_algorithm) so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

 We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

 You must solve this problem without using the library's sort function.

 Example 1:

 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 Example 2:

 Input: nums = [2,0,1]
 Output: [0,1,2]
 Constraints:

 n == nums.length
 1 <= n <= 300
 nums[i] is either 0, 1, or 2.
 */

func dutchNationalFlag(_ nums: inout [Int]) -> [Int] {
  
  var k = nums.endIndex - 1
  var i = 0
  var j = 0

  // Define regions
  // 0 to j-1 => 0s
  // j to i-1 => 1s
  // i to k -> Unknown
  // k to end -> 2s
  
  while i <= k {
    switch nums[i] {
    
    case 0:
      nums.swapAt(i, j)
      j += 1
      i += 1
      
    case 1:
      i += 1
    
    case 2:
      nums.swapAt(i, k)
      k -= 1
      
    default: break
    }
  }
  
  return nums
}
