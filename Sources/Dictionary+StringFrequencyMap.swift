//
//  Dictionary+StringFrequencyMap.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
extension Dictionary where Key == Character, Value == Int {
  mutating func increment(_ char: Character) {
    self[char, default: 0] += 1
  }
  
  mutating func decrement(_ char: Character, removeIfReachesZero: Bool = true) {
    if let charCount = self[char], charCount > 1 {
      self[char] = charCount - 1
    } else if removeIfReachesZero {
      removeValue(forKey: char)
    }
  }
}
