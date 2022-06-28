//
//  Isomorphic Strings.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-28.
//

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var STMap = [Character: Character]()
    var TSMap = [Character: Character]()
    
    let sArray = Array(s)
    let tArray = Array(t)
    
    for index in 0 ..< sArray.count {
        let sChar = sArray[index]
        let tChar = tArray[index]
        if STMap[sChar] != nil && STMap[sChar] != tChar {
            return false
        } else {
            STMap[sChar] = tChar
        }
    }
    
    for index in 0 ..< tArray.count {
        let tChar = tArray[index]
        let sChar = sArray[index]
        
        if TSMap[tChar] != nil && TSMap[tChar] != sChar {
            return false
        } else {
            TSMap[tChar] = sChar
        }
    }
    
    return true
}
