//
//  ContainsDuplicate.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-13.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    if nums.isEmpty { return false }
    
    var numSet = Set<Int>()
    
    for num in nums {
        if numSet.contains(num) {
            return true
        }
        
        numSet.insert(num)
    }
    
    return false
}
