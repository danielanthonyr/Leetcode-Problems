//
//  KthSmallestElementBST.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-12.
//

import Foundation

func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    if root == nil { return 0 }
    
    var result = [Int]()
    
    func inorderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
        
        inorderTraversal(root.left)
        result.append(root.val)
        inorderTraversal(root.right)
    }
    
    inorderTraversal(root)
    
    return result[k - 1]
}
