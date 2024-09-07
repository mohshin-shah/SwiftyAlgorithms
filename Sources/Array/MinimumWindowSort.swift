//
//  File.swift
//  
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
/**
 Given an array, find the length of the smallest subarray in it which when sorted will sort the whole array.

 Example 1:

 Input: [1, 2, 5, 3, 7, 10, 9, 12]
 Output: 5
 Why: Sort only the subarray [5, 3, 7, 10, 9]

 Example 2:
 Input: [1, 3, 2, 0, -1, 7, 10]
 Output: 5
 Why: Sort only the subarray [1, 3, 2, 0, -1]
 
 Example 3:
 Input: [1, 2, 3]
 Output: 0
 
 Example 4:
 Input: [3, 2, 1]
 Output: 3
 */
func findMinimumWindowSort(arr: [Int]) -> Int {
  // [1, 3, 2, 0, -1, 7, 10]
  var left = 0
  
  while left < arr.endIndex - 1, arr[left] <= arr[left + 1] {
    left += 1
  }
  
  if left == arr.endIndex - 1 {
    return 0
  }
  
  var right = arr.endIndex - 1
  while right > 0, arr[right - 1] <= arr[right] {
    right -= 1
  }
  
  var windowMin = Int.max
  var windowMax = Int.min
  
  for i in left...right {
    windowMax = max(windowMax, arr[i])
    windowMin = min(windowMin, arr[i])
  }
  
  while left > 0, arr[left - 1] > windowMin {
    left -= 1
  }
  
  while right < arr.endIndex - 1, arr[right + 1] < windowMax {
    right += 1
  }
  
  return right - left + 1
}
