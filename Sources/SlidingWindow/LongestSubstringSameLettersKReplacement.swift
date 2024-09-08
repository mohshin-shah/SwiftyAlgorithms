//
//  LongestSubstringSameLettersKReplacement.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-08.
//

import Foundation
/**
 Problem Statement
 Given a string with lowercase letters only, if you are allowed to replace no more than ‘k’ letters with any letter, find the length of the longest substring having the same letters after replacement.

 Example 1:

 Input: str="aabccbb", k=2
 Output: 5
 Explanation: Replace the two 'c' with 'b' to have a longest repeating substring "bbbbb".
 Example 2:

 Input: str="abbcb", k=1
 Output: 4
 Explanation: Replace the 'c' with 'b' to have a longest repeating substring "bbbb".
 Example 3:

 Input: str="abccde", k=1
 Output: 3
 Explanation: Replace the 'b' or 'd' with 'c' to have the longest repeating substring "ccc".
 */
func findLongestSubstringSameLettersKReplacement(string: String, k: Int) -> Int {
  
  var freqMap = [Character: Int]()
  let array = Array(string)
  var windowStart = 0
  var repeatingLettersCount = Int.min
  var maxLength = Int.min
  
  for (windowEnd, char) in array.enumerated() {
    freqMap.increment(char)
    repeatingLettersCount = max(repeatingLettersCount, freqMap[char, default: Int.min])
    
    let totalLettersCount = windowEnd - windowStart + 1
    let otherLettersCount = totalLettersCount - repeatingLettersCount
    
    if otherLettersCount > k {
      freqMap.decrement(array[windowStart])
      windowStart += 1
    }
    
    let windowLegth = windowEnd - windowStart + 1
    maxLength = max(maxLength, windowLegth)
  }
  return maxLength
}
