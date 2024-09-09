//
//  PermutationOfPatternInString.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-09.
//

import Foundation
/**
 Problem Statement
 Given a string and a pattern, find out if the string contains any permutation of the pattern.
 
 Example 1:
 
 Input: str="oidbcaf", pattern="abc"
 Output: true
 Explanation: The string contains "bca" which is a permutation of the given pattern.
 Example 2:
 
 Input: str="odicf", pattern="dc"
 Output: false
 Explanation: No permutation of the pattern is present in the given string as a substring.
 Example 3:
 
 Input: str="bcdxabcdy", pattern="bcdyabcdx"
 Output: true
 Explanation: Both the string and the pattern are a permutation of each other.
 Example 4:
 
 Input: str="aaacb", pattern="abc"
 Output: true
 Explanation: The string contains "acb" which is a permutation of the given pattern.
 */
func findPermutationOfPatternInString(
  string: String,
  pattern p: String
) -> Bool {
  var windowStart = 0
  let array = Array(string)
  let pattern = Array(p)
  
  let patternMap: [Character: Int] = pattern.reduce(into: [:]) { map, char in
    map[char, default: 0] += 1
  }
  
  var matchCount = 0
  var windowMap = [Character: Int]()
  
  for (windowEnd, char) in string.enumerated() {
    windowMap.increment(char)
    
    // Check if the frequency of the current character matches that in the patternMap
    if let patternFreq = patternMap[char], patternFreq == windowMap[char] {
      matchCount += 1
    }

    if windowEnd >= pattern.count {
      let windowStartChar = array[windowStart]
      
      if let pC = patternMap[windowStartChar],
         let wC = windowMap[windowStartChar],
         pC == wC {
        matchCount -= 1
      }
      
      windowMap.decrement(windowStartChar)
      windowStart += 1
    }
    
    if matchCount == patternMap.count {
      return true
    }
  }
  
  return false
}
