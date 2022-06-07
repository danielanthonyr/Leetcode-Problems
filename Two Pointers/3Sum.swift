//
//  3Sum.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-07.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    if nums.isEmpty || nums.count < 3 { return [] }
    // three pointers, where one pointer is on outside, and two other pointers are approaching each other
    
    // 1 - Sort nums first
    let sortedNums = nums.sorted()
    
    var resultSet = Set<[Int]>()
    
    for i in 0 ..< sortedNums.count - 2 {
        // edge case that handles duplicate sets
        if i > 0 && sortedNums[i] == sortedNums[i - 1] {
            continue
        }
        
        var j = i + 1
        var k = nums.count - 1
        
        while j < k {
            let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
            
            if sum == 0 {
                resultSet.insert([sortedNums[i], sortedNums[j], sortedNums[k]])
                // move pointers inwards since we dont want duplicate sets
                j += 1
                k -= 1
                continue
            }
            
            if sum < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    
    return Array(resultSet)
}
