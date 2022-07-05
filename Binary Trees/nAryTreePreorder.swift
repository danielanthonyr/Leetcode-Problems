//
//  nAryTreePreorder.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-07-05.
//

import Foundation

fileprivate class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

fileprivate func preorder(_ root: Node?) -> [Int] {
    if root == nil { return [] }
    
    var result = [Int]()
    
    func dfs(_ root: Node?) {
        if root == nil { return }
        
        result.append(root!.val)
        
        for child in root!.children {
            dfs(child)
        }
    }
    
    dfs(root)
    
    return result
}
