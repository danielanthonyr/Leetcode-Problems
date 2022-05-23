//
//  IsPalindrome.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-23.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
    let pattern = "[^A-Za-z0-9]+"
    let result = Array(s.replacingOccurrences(of: pattern, with: "", options: [.regularExpression]).lowercased())
    
    var left = 0
    var right = result.count - 1
    
    while left < right {
        if result[left] != result[right] {
            return false
        }
        
        left += 1
        right -= 1
    }
    
    return true
}
