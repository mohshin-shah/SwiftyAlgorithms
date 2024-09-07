//
//  FruitBasket.swift
//
//
//  Created by Mohshinsha Shahmadar on 2024-09-07.
//

import Foundation
/**
 Problem Statement
 You are visiting a farm to collect fruits. The farm has a single row of fruit trees. You will be given two baskets, and your goal is to pick as many fruits as possible to be placed in the given baskets.

 You will be given an array of characters where each character represents a fruit tree. The farm has following restrictions:

 Each basket can have only one type of fruit. There is no limit to how many fruit a basket can hold.
 You can start with any tree, but you can’t skip a tree once you have started.
 You will pick exactly one fruit from every tree until you cannot, i.e., you will stop when you have to pick from a third fruit type.

 Write a function to return the maximum number of fruits in both baskets.

 Example 1:

 Input: arr=['A', 'B', 'C', 'A', 'C']
 Output: 3
 Explanation: We can put 2 'C' in one basket and one 'A' in the other from the subarray ['C', 'A', 'C']
 Example 2:

 Input: arr = ['A', 'B', 'C', 'B', 'B', 'C']
 Output: 5
 Explanation: We can put 3 'B' in one basket and two 'C' in the other basket. This can be done if we start with the second letter: ['B', 'C', 'B', 'B', 'C']
 */

func findMaximumFruitsInBothBaskets(trees: String, typesOfFruitsAllowedInBasket: Int) -> Int {
  var windowStart = 0
  var baskets = [Character: Int]()
  var maximumFruits = Int.min
  
  let treesArray = Array(trees)
  
  for (windowEnd, fruit) in treesArray.enumerated() {
    baskets.increment(fruit)
    
    while baskets.count > typesOfFruitsAllowedInBasket {
      baskets.decrement(treesArray[windowStart])
      windowStart += 1
    }
    
    maximumFruits = max(maximumFruits, windowEnd - windowStart + 1)
  }
  
  return maximumFruits
}
