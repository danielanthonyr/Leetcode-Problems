//
//  ProductExceptSelf.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-22.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    // Idea is to do 2 passes, one to set prefix values in result array for all numbers in their respective slots
    // second pass we do from the end of array to beginning, will be to multiply the postfixes with prefixes in array to enter true values in array
    var result = [Int](repeating: 0, count: nums.count) // dont forget to initialize array default values since we wont be appending
    var prefix = 1
    
    // first pass
    for index in 0 ..< nums.count {
        result[index] = prefix
        prefix = result[index] * nums[index]
    }
    // array is now [1, 1, 2, 6] -> contains prefixes product at respectives slots for values at nums[i]
    
    // second pass
    var postfix = 1
    for index in (0 ..< nums.count).reversed() { // does end to beginning
        result[index] = postfix * result[index]
        postfix = postfix * nums[index]
    }
    
    return result
}
