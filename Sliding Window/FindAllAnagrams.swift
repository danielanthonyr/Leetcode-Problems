//
//  FindAllAnagrams.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-07-05.
//

import Foundation

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    var sCountMap = [Character: Int]()
    var pCountMap = [Character: Int]()
    let pCount = p.count // must initialize here instead of checking every time on line 19 (results in O(n) time if u do that)
    
    // initialize p map
    for ch in p {
        pCountMap[ch, default: 0] += 1
    }
    
    // use sliding window to check all substrings if they are an anagram of p
    var left = 0
    let sArray = Array(s)
    var result = [Int]()
    
    for right in 0 ..< sArray.count {
        // if substring bigger than pCount, remove first value
        if right >= pCount {
            sCountMap[sArray[left]]! -= 1
            if sCountMap[sArray[left]]! < 1 {
                sCountMap[sArray[left]] = nil
            }
            left += 1
        }
        
        // add right window to sCount map
        sCountMap[sArray[right], default: 0] += 1
        
        if sCountMap == pCountMap {
            result.append(left)
        }
    }
    
    return result
}
