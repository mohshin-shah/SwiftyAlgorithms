//
//  LongestSubstringKDistinctChars.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
/**
 Problem Statement
 Given a string, find the length of the longest substring in it with no more than K distinct characters.
 
 You can assume that K is less than or equal to the length of the given string.
 
 Example 1:
 
 Input: String="araaci", K=2
 Output: 4
 Explanation: The longest substring with no more than '2' distinct characters is "araa".
 Example 2:
 
 Input: String="araaci", K=1
 Output: 2
 Explanation: The longest substring with no more than '1' distinct characters is "aa".
 Example 3:
 
 Input: String="cbbebi", K=3
 Output: 5
 Explanation: The longest substrings with no more than '3' distinct characters are "cbbeb" & "bbebi".
 */
func findLongestSubstringKDistinctCharacters(string: String, k: Int) -> Int {
  var windowStart = 0
  var freqMap = [Character: Int]()
  var result = 0
  let arrayString = Array(string)
  
  for (windowEnd, char) in arrayString.enumerated() {
    freqMap.increment(char)
    
    while freqMap.count > k {
      freqMap.decrement(arrayString[windowStart])
      windowStart += 1
    }
    
    result = max(result, windowEnd - windowStart + 1)
  }
  
  return result
}
