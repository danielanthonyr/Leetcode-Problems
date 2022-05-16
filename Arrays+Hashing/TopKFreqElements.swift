//
//  TopKFreqElements.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-16.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    if nums.isEmpty { return [] }
    var result = [Int]()
    
    var occurencesMap = [Int: Int]()
    
    for num in nums {
        occurencesMap[num, default: 0] += 1
    }
    
    var occurencesArray = [[Int]](repeating: [], count: nums.count + 1)
    
    for (key, value) in occurencesMap {
        occurencesArray[value].append(key)
    }
    
    for index in (0 ..< occurencesArray.count).reversed() {
        if occurencesArray[index].count > 0 {
            result.append(contentsOf: occurencesArray[index])
        }
        
        if result.count == k {
            return result
        }
    }
    
    return result
}
