//
//  TrappingRainWater.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-08.
//

import Foundation

func trap(_ height: [Int]) -> Int {
    if height.isEmpty || height.count <= 1 { return 0 }
    
    var left = 0
    var right = height.count - 1
    
    var maxLeftBorder = height[left]
    var maxRightBorder = height[right]
    var waterUnits = 0
    
    while left < right {
        if maxLeftBorder <= maxRightBorder {
            left += 1
            maxLeftBorder = max(maxLeftBorder, height[left])
            if maxLeftBorder - height[left] > 0 { // this is condition that determines whether we can carry water
                waterUnits += maxLeftBorder - height[left]
            }
        } else {
            right -= 1
            maxRightBorder = max(maxRightBorder, height[right])
            if maxRightBorder - height[right] > 0 {
                waterUnits += maxRightBorder - height[right]
            }
        }
    }
    
    return waterUnits
}
