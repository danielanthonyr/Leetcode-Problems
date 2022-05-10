//
//  MaxDepthBinaryTree.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-10.
//

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    
    return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
}
