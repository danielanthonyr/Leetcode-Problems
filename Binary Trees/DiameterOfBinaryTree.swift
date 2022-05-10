//
//  DiameterOfBinaryTree.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-10.
//

import Foundation

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    
    var maxDiameter = Int.min
    
    func dfs(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        
        let heightOfLeftTree = dfs(root?.left)
        let heightOfRightTree = dfs(root?.right)
        
        maxDiameter = max(maxDiameter, heightOfLeftTree + heightOfRightTree)
        
        return 1 + max(heightOfLeftTree, heightOfRightTree)
    }
    
    dfs(root)
    
    return maxDiameter
}
