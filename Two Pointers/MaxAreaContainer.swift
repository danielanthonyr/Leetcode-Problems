//
//  MaxAreaContainer.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-23.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    if height.isEmpty { return 0 }
    
    var maxArea = 0
    
    var left = 0
    var right = height.count - 1
    
    while left < right {
        let area = min(height[left], height[right]) * (right - left)
        maxArea = max(maxArea, area)
        
        if height[left] >= height[right] {
            right -= 1
        } else {
            left += 1
        }
    }
    
    return maxArea
}
