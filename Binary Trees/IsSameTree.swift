//
//  IsSameTree.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-10.
//

import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil { return true }
    
    if p?.val != q?.val {
        return false
    }
    
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
}
