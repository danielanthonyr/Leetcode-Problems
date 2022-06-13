//
//  Subsets.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-13.
//

import Foundation

func subsets(_ nums: [Int]) -> [[Int]] {
    if nums.isEmpty { return [] }
    
    var resultSet = Set<[Int]>()
    var stack = [Int]()
    
    func backtrack(currentIndex: Int) {
        // add current stack
        resultSet.insert(stack)
        
        // base case
        if currentIndex >= nums.count {
            return
        }
        
        for index in currentIndex ..< nums.count {
            stack.append(nums[index])
            backtrack(currentIndex: index + 1)
            stack.removeLast()
        }
    }
    
    backtrack(currentIndex: 0)
    
    return Array(resultSet)
}
