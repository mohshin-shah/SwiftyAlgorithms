//
//  PatternAnagramsInString.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-09.
//

import Foundation
/**
 Problem Statement
 Given a string and a pattern, find all anagrams of the pattern in the given string.
 
 Write a function to return a list of starting indices of the anagrams of the pattern in the given string.
 
 Example 1:
 
 Input: str="ppqp", pattern="pq"
 Output: [1, 2]
 Explanation: The two anagrams of the pattern in the given string are "pq" and "qp".
 Example 2:
 
 Input: str="abbcabc", pattern="abc"
 Output: [2, 3, 4]
 Explanation: The three anagrams of the pattern in the given string are "bca", "cab", and "abc".
 */
func findPatternAnagrams(in string: String, pattern: String) -> [Int] {
  var result = [Int]()
  var windowStart = 0
  var matched = 0
  
  let array = Array(string)
  var patternMap: [Character: Int] = pattern.reduce(into: [:]) { $0[$1, default: 0] += 1 }
  
  for (windowEnd, char) in array.enumerated() {
    // If the current character is part of the pattern, decrease its count in the patternMap
    if let count = patternMap[char] {
      patternMap[char] = count - 1
      if patternMap[char] == 0 {
        matched += 1
      }
    }
    
    // If the window size equals the pattern length, we check if we found a match
    if windowEnd >= pattern.count - 1 {
      // If all characters matched, record the starting index
      if matched == patternMap.count {
        result.append(windowStart)
      }
      
      // Slide the window: remove the character going out of the window
      let startChar = array[windowStart]
      if let count = patternMap[startChar] {
        if patternMap[startChar] == 0 {
          matched -= 1
        }
        patternMap[startChar] = count + 1
      }
      windowStart += 1
    }
  }
  
  return result
}
