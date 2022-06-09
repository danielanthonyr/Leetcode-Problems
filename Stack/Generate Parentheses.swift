//
//  Generate Parentheses.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-09.
//

import Foundation

/*
    Backtracking + stack problem, visualize as a tree with AT MOST 2 possible outcomes at each stage
        1st outcome: add "("
        2nd outcome: add ")"
 */

func generateParenthesis(_ n: Int) -> [String] {
    /*
     3 conditions
     1 - only add open parentheses if open < n
     2 - only add close if close < open
     3 - add to result IFF open == n && close == n
     */

    var stack = [String]()
    var result = [String]()
    
    func backtrack(openCount: Int, closedCount: Int) {
        if openCount == n && closedCount == n {
            result.append(stack.joined(separator: ""))
            return
        }
        
        if openCount < n {
            stack.append("(")
            backtrack(openCount: openCount + 1, closedCount: closedCount)
            stack.removeLast()
        }
        
        if closedCount < openCount {
            stack.append(")")
            backtrack(openCount: openCount, closedCount: closedCount + 1)
            stack.removeLast()
        }
    }
    
    backtrack(openCount: 0, closedCount: 0)
    
    return result
}
