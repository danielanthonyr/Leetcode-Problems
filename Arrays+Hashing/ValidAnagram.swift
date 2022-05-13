//
//  ValidAnagram.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-13.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    var sMapping = [Character: Int]() // character:count
    var tMapping = [Character: Int]()
    
    for ch in s {
        sMapping[ch, default: 0] += 1
    }
    
    for ch in t {
        tMapping[ch, default: 0] += 1
    }
    
    // edge case: "a" and "ab"
    if sMapping.keys.count != tMapping.keys.count {
        return false
    }
    
    for ch in s {
        if tMapping[ch] == nil || tMapping[ch]! != sMapping[ch]! {
            return false
        }
    }
    
    return true
}
