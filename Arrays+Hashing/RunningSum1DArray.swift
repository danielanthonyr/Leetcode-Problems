//
//  RunningSum1DArray.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-28.
//

import Foundation

func runningSum(_ nums: [Int]) -> [Int] {
    if nums.isEmpty { return [] }
    
    var prefixSum = 0
    var result = [Int]()
    
    for num in nums {
        result.append(prefixSum + num)
        prefixSum = result[result.count - 1]
    }
    
    return result
}
