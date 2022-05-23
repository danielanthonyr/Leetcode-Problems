//
//  LongestSubstringWithoutRepeatingChars.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-23.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard s.count > 0 else { return 0 }
    
    var charSet = Set<Character>()
    var result = 0
    let stringArray = Array(s)
    
    var left = 0
    
    for right in 0 ..< stringArray.count {
        while charSet.contains(stringArray[right]) {
            charSet.remove(stringArray[left])
            left += 1
        }
        
        charSet.insert(stringArray[right])
        result = max(result, right - left + 1)
    }
    
    return result
}
