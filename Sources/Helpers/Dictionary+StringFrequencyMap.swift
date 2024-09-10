//
//  Dictionary+StringFrequencyMap.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
extension Dictionary where Key == Character, Value == Int {
  enum RemovalStrategy {
    case removeIfReachesZero
    case allowNegatives
  }
  
  @discardableResult
  mutating func increment(_ char: Character) -> Int {
    let newFreq = self[char, default: 0] + 1
    self[char] = newFreq
    return newFreq
  }
  
  @discardableResult
  mutating func decrement(_ char: Character, strategy: RemovalStrategy = .removeIfReachesZero) -> Int {
    guard let charCount = self[char] else { return 0 }
    switch (strategy, charCount) {
    case (.removeIfReachesZero, 1):
      removeValue(forKey: char)
      return 0
    default:
      self[char] = charCount - 1
      return charCount - 1
    }
  }
}
