//
//  ValidParentheses.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-27.
//

import Foundation

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    
    for ch in s {
        if ch == "(" || ch == "{" || ch == "[" {
            stack.append(ch)
        } else {
            if ch == ")" && stack.last != "(" {
                return false
            }
            
            if ch == "}" && stack.last != "{" {
                return false
            }
            
            if ch == "]" && stack.last != "[" {
                return false
            }
            
            stack.removeLast()
        }
    }
    
    // at end, if stack is empty it means we removed all corresponding parentheses
    return stack.isEmpty
}
