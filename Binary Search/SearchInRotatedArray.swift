//
//  SearchInRotatedArray.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-09.
//

import Foundation

func rotatedSearch(_ nums: [Int], _ target: Int) -> Int {
    if nums.isEmpty { return -1 }
    
    let pivotIndex = findPivotIndex(nums)
    
    if nums[pivotIndex] == target { return pivotIndex }
    
    // determining left and right boundaries to search
    if nums[0] < nums[nums.count - 1] {
        return binarySearch(nums, left: 0, right: nums.count - 1, target: target)
    } else if nums[0] > target {
        return binarySearch(nums, left: pivotIndex, right: nums.count - 1, target: target)
    } else {
        return binarySearch(nums, left: 0, right: pivotIndex - 1, target: target)
    }
}

func findPivotIndex(_ nums: [Int]) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left < right {
        let midpoint = (left + right) / 2
        
        if nums[midpoint] > nums[right] {
            left = midpoint + 1
        } else {
            right = midpoint
        }
    }
    
    return left
}

func binarySearch(_ nums: [Int], left: Int, right: Int, target: Int) -> Int {
    var left = left
    var right = right
    
    while left <= right {
        let midpoint = (left + right) / 2
        
        if nums[midpoint] == target {
            return midpoint
        }
        
        if nums[midpoint] < target {
            left = midpoint + 1
        } else {
            right = midpoint - 1
        }
    }
    
    return -1
}
