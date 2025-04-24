//
//  RodCuttingMaxProfit.swift
//  SwiftyAlgorithms
//
//  Created by Mohshinsha Shahmadar on 2025-04-23.
//

import Foundation

/**
 Given a rod of length n and an array of prices that contains prices of all pieces of size smaller than n.
 Determine the maximum profit obtainable by cutting up the rod and selling the pieces.
 
 Sample inputs and outputs:
 Input: [1, 5, 8, 9, 10, 17, 17, 20]
 Output: 22
 */
func rodCuttingMaxProfit(_ prices: [Int]) -> Int {
  if prices.isEmpty {
    return 0
  } else if prices.count == 1 {
    return prices[0]
  } else {
    let priceArray = [0] + prices
    var bestProfit = Array.init(repeating: 0, count: priceArray.count)
    
    bestProfit[0] = 0
    bestProfit[1] = priceArray[1]
    
    for rodLength in 2..<bestProfit.count {
      var maximumProfit = priceArray[rodLength]
      
      for potentialCut in stride(from: rodLength, through: 1, by: -1) {
        let remainingRodLength = rodLength - potentialCut
        let remainingRodBestPrice = bestProfit[remainingRodLength]
        let totalProfitWithCutAndRemainingBest = remainingRodBestPrice + priceArray[potentialCut]
        
        if totalProfitWithCutAndRemainingBest > maximumProfit {
          maximumProfit = totalProfitWithCutAndRemainingBest
        }
      }
      bestProfit[rodLength] = maximumProfit
    }
    
    return bestProfit[prices.count]
  }
}
