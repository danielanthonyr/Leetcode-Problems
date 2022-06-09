//
//  BinarySearch.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-09.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    if nums.isEmpty { return -1 }
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let midpoint = (left + right) / 2
        
        if nums[midpoint] == target {
            return midpoint
        }
        
        if nums[midpoint] < target {
            left = midpoint + 1
        } else {
            right = midpoint - 1
        }
    }
    
    return -1
}
