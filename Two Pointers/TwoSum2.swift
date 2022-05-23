//
//  TwoSum2.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-23.
//

import Foundation

func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
    if numbers.isEmpty { return [] }
    
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        if numbers[left] + numbers[right] == target {
            return [left, right]
        }
        
        if numbers[left] + numbers[right] > target {
            right -= 1
        } else {
            left += 1
        }
    }
    
    return [-1, -1]
}
