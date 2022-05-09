//
//  TreeSum.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-09.
//

import Foundation

func treeSum(root: Node?) -> Int {
    if root == nil { return 0 }
    
    let currentSum = root!.val + treeMinimumValue(root: root?.left) + treeMinimumValue(root: root?.right)
    
    return currentSum
}
