//
//  IsSameSubtree.swift
//  Leetcode-Problems
//
//  Created by ryan on 2022-05-10.
//

import Foundation

func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    if root == nil { return false }
    
    if isSameSubtree(root, subRoot) {
        return true
    }
    
    return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
}

func isSameSubtree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil { return true }
    
    if p?.val != q?.val { return false }
    
    return isSameSubtree(p?.left, q?.left) && isSameSubtree(p?.right, q?.right)
}
