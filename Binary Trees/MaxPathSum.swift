//
//  MaxPathSum.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-12.
//

import Foundation

func maxPathSum(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    
    var result = root!.val
    
    func dfs(_ root: TreeNode?) -> Int {
        // base case
        guard let root = root else { return 0 }
        
        // edge case where sums from either side could be negative
        var leftPathSum = dfs(root.left)
        var rightPathSum = dfs(root.right)
        
        if leftPathSum < 0 {
            leftPathSum = 0
        }
        
        if rightPathSum < 0 {
            rightPathSum = 0
        }
        
        // case 1 - since we can only visit a node once, we want max path between left or right side + current node's val
        let pathSum = root.val + max(leftPathSum, rightPathSum)
        
        // case 2 - since the max path could be the current subtree, we need to account for that too
        let currentPathSum = root.val + leftPathSum + rightPathSum
        
        result = max(result, pathSum, currentPathSum)
        
        // we only want to return the max path sum of a certain path, this is why we use pathSum
        return pathSum
    }
    
    dfs(root)
    
    return result
}
