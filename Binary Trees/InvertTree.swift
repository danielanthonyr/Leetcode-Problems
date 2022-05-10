//
//  InvertTree.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-10.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        left = nil
        right = nil
    }
}

func invertTree(_ root: TreeNode?) -> TreeNode? {
    if root == nil { return nil }
    
    let temp = root?.left
    
    root?.left = invertTree(root?.right)
    root?.right = invertTree(temp)
    
    return root
}
