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
  var matchCount = 0
  
  let array = Array(string)
  
  var patternMap: [Character: Int] = pattern.reduce(into: [:]) { $0[$1, default: 0] += 1 }
  
  // =str="abb cabc", pattern="abc"
  // a: 1, b: 1, c: 1

  for (windowEnd, char) in array.enumerated() {
    let charFreq = patternMap.decrement(char, strategy: .allowNegatives)
    if charFreq == 0 {
      matchCount += 1
    }
    
    if windowEnd >= pattern.count - 1 {
      
      if matchCount == pattern.count {
        result.append(windowStart)
      }
      
      let wStartChar = array[windowStart]
      let wStartFreq = patternMap.increment(wStartChar)
      if wStartFreq != 0 {
        matchCount -= 1
      }
      windowStart += 1
    }
  }
  
  return result
}
