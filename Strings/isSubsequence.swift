//
//  isSubsequence.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-28.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sPointer = 0
    var tPointer = 0
    
    let sArray = Array(s)
    let tArray = Array(t)
    
    while tPointer < tArray.count && sPointer < sArray.count {
        if sArray[sPointer] == tArray[tPointer] {
            sPointer += 1
        }
        
        tPointer += 1
    }
    
    return sPointer == sArray.count
}
