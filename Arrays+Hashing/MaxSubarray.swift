//
//  MaxSubarray.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-07-13.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    if nums.isEmpty { return 0 }
    
    var runningSum = 0
    var maxValue = nums[0]
    
    for index in 0 ..< nums.count {
        if runningSum < 0 {
            runningSum = 0
        }
        
        runningSum += nums[index]
        maxValue = max(maxValue, runningSum)
    }
    
    return maxValue
}
