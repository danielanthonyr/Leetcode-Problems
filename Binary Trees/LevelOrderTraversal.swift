//
//  LevelOrderTraversal.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-11.
//

import Foundation

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    if root == nil { return [] }
    
    var result = [[Int]]()
    var queue = [TreeNode]()
    queue.append(root!)
    
    while !queue.isEmpty {
        var level = [Int]()
        
        for _ in 0 ..< queue.count {
            let currentNode = queue.removeFirst()
            
            if let leftChild = currentNode.left {
                queue.append(leftChild)
            }
            
            if let rightChild = currentNode.right {
                queue.append(rightChild)
            }
            
            level.append(currentNode.val)
        }
        
        result.append(level)
    }
    
    return result
}
