//
//  GroupAnagrams.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-15.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    if strs.isEmpty { return [] }
    
    var sortedAnagramMap = [String: [String]]()
    
    for word in strs {
        let sortedWord = String(word.sorted())
        
        sortedAnagramMap[sortedWord, default: []].append(word)
    }
    
    let result = sortedAnagramMap.values.map {
        return $0
    }
    
    return result
}
