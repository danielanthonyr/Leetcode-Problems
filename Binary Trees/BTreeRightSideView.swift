//
//  BTreeRightSideView.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-12.
//

import Foundation

func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    
    var queue = [TreeNode]()
    queue.append(root)
    
    var result = [Int]()
    
    while !queue.isEmpty {
        if let lastNode = queue.last {
            result.append(lastNode.val)
        }
        
        for _ in 0 ..< queue.count {
            let currentNode = queue.removeFirst()
            
            if let leftChild = currentNode.left {
                queue.append(leftChild)
            }
            
            if let rightChild = currentNode.right {
                queue.append(rightChild)
            }
        }
    }
    
    return result
}
