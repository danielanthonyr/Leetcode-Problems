//
//  TreeMinimumValue.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-09.
//

import Foundation

func treeMinimumValue(root: Node?) -> Int {
    if root == nil {
        return Int.max
    }
    
    let minimum = min(root!.val, treeMinimumValue(root: root?.left), treeMinimumValue(root: root?.right))
    
    return minimum
}
