//
//  BestTimeToBuyStock.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-23.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else { return 0 }
    
    var profit = 0
    var buyIndex = 0
    
    for sellIndex in 1 ..< prices.count {
        profit = max(profit, prices[sellIndex] - prices[buyIndex])
        
        if prices[sellIndex] < prices[buyIndex] {
            buyIndex = sellIndex
        }
    }
    
    return profit
}
