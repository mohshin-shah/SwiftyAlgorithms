//
//  ContainsDuplicate.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-08-19.
//

import Foundation

/**
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 
 
 Example 1:
 
 Input: nums = [1,2,3,1]
 Output: true
 Example 2:
 
 Input: nums = [1,2,3,4]
 Output: false
 Example 3:
 
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

func containsDuplicate(_ nums: [Int]) -> Bool {
    var map = Set<Int>()
    for n in nums {
        if map.contains(n) {
            return true
        }
        map.insert(n)
    }

    return false
}

// Alternative solution
func containsDuplicate2(_ nums: [Int]) -> Bool {
  Set(nums).count != nums.count
}

