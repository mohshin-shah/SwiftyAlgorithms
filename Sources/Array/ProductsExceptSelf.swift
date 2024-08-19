//
//  ProductsExceptSelf.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-08-19.
//

import Foundation

/**
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

  

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 Example 2:

 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]

 */
func productExceptSelf(_ nums: [Int]) -> [Int] {
  var prefixProduct = Array(repeating: 1, count: nums.count)
  var suffixProduct = Array(repeating: 1, count: nums.count)
  
  for i in 1..<nums.count {
    prefixProduct[i] = prefixProduct[i - 1] * nums[i - 1]
  }
  
  for i in stride(from: nums.count - 2, through: 0, by: -1) {
    suffixProduct[i] = suffixProduct[i + 1] * nums[i + 1]
  }
  
  var result = Array(repeating: 1, count: nums.count)

  for i in 0..<nums.count {
    result[i] = prefixProduct[i] * suffixProduct[i]
  }
  return result
}
