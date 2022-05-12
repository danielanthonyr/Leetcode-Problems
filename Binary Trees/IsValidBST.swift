//
//  IsValidBST.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-12.
//

import Foundation

func isValidBST(_ root: TreeNode?) -> Bool {
    if root == nil { return false }
    
    func dfs(_ root: TreeNode?, lowerBoundary: Int, upperBoundary: Int) -> Bool {
        guard let root = root else { return true }
        
        if !(root.val > lowerBoundary && root.val < upperBoundary) {
            return false
        }
        
        return dfs(root.left, lowerBoundary: lowerBoundary, upperBoundary: root.val)
        && dfs(root.right, lowerBoundary: root.val, upperBoundary: upperBoundary)
    }
    
    return dfs(root, lowerBoundary: Int.min, upperBoundary: Int.max)
}
