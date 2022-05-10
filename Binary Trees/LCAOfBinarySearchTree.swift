//
//  LCAOfBinarySearchTree.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-10.
//

import Foundation

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    if root == nil { return nil }
    
    if (root!.val >= p!.val && root!.val <= q!.val) || (root!.val >= q!.val && root!.val <= p!.val) {
        return root
    }
    
    if root!.val > p!.val && root!.val > q!.val {
        return lowestCommonAncestor(root?.left, p, q)
    } else {
        return lowestCommonAncestor(root?.right, p, q)
    }
}
