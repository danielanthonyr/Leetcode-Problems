//
//  ConstructBinaryTreePreorderInorder.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-28.
//

import Foundation

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    guard let rootVal = preorder.first else { return nil }
    let root = TreeNode(rootVal)
    
    let mid = inorder.index(of: rootVal)!
    
    root.left = buildTree(Array(preorder[1 ..< mid + 1]), Array(inorder[0 ..< mid]))
    root.right = buildTree(Array(preorder[mid + 1 ..< preorder.count]), Array(inorder[mid + 1 ..< inorder.count]))
    
    return root
}
