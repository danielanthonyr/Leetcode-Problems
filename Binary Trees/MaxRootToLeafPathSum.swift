//
//  MaxRootToLeafPathSum.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-09.
//

import Foundation

fileprivate class Node {
    var val: Int
    var left: Node?
    var right: Node?
    
    init(_ val: Int) {
        self.val = val
        left = nil
        right = nil
    }
}

func maxRootPathSum(root: Node?) -> Int {
    if root == nil { return Int.min }
    
    if root?.left == nil && root?.right == nil {
        return root!.val
    }
    
    let currentPathSum = root!.val + max(maxRootPathSum(root: root?.left), maxRootPathSum(root: root?.right))
    
    return currentPathSum
}
