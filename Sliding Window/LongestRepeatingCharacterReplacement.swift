//
//  LongestRepeatingCharacterReplacement.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-23.
//

import Foundation

func characterReplacement(_ s: String, _ k: Int) -> Int {
    guard s.count > 0 else { return 0 }
    
    var charCountMap = [Character: Int]()
    
    var start = 0
    let stringArray = Array(s)
    var result = 0
    var maxOccurenceCount = 0 // storing a maxOccurenceCount instead of checking charCountMap.values.max() iteration that would cause Time complexity of n*n
    
    for end in 0 ..< stringArray.count {
        charCountMap[stringArray[end], default: 0] += 1
        if charCountMap[stringArray[end]]! > maxOccurenceCount {
            maxOccurenceCount = charCountMap[stringArray[end]]!
        }
        
        // condition is length of substring - charCountMap.values.max() <= k for it to be an eligible non repeat. substring
        while (end - start + 1) - maxOccurenceCount > k {
            charCountMap[stringArray[start], default: 0] -= 1
            start += 1
        }
        
        result = max(result, end - start + 1)
    }
    
    return result
}
