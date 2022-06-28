//
//  isBadVersion.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-28.
//

import Foundation

/*
    Commented out because we dont have access to parent class Version control which contains isBadVersionMethod
func firstBadVersion(_ n: Int) -> Int {
    var left = 0
    var right = n
    
    while left <= right {
        let midpoint = (left + right) / 2
        let isBadVersionMidpoint = isBadVersion(midpoint)
        
        if isBadVersionMidpoint && isBadVersion(right) {
            right = midpoint - 1
        } else {
            left = midpoint + 1
        }
    }
    
    return left
}
 */
