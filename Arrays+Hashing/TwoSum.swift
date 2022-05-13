//
//  TwoSum.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-13.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    if nums.isEmpty { return [] }
    
    var numMapping = [Int: Int]()
    
    for index in 0 ..< nums.count {
        if numMapping[nums[index]] != nil {
            return [index, numMapping[nums[index]]!]
        } else {
            numMapping[target - nums[index]] = index
        }
    }
    
    return []
}
