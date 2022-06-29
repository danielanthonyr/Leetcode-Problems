//
//  NodesDistanceK.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-29.
//

import Foundation

func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
    if root == nil { return [] }
    
    var result = [Int]()
    
    // idea is to turn tree into a graph, and run BFS from the target node to k distance, and then append that to result array
    // 1 - create adjacency list
    var adjList = [Int: [Int]]()
    
    func dfs(_ root: TreeNode?, parent: TreeNode?) {
        if root == nil { return }
        
        if let parent = parent {
            adjList[root!.val, default: []].append(parent.val)
        }
        
        if let leftChild = root?.left {
            adjList[root!.val, default: []].append(leftChild.val)
        }
        
        if let rightChild = root?.right {
            adjList[root!.val, default: []].append(rightChild.val)
        }
        
        dfs(root?.left, parent: root)
        dfs(root?.right, parent: root)
    }
    
    dfs(root, parent: nil)
    
    // 2 - Run BFS in graph from target node
    
    var visited = Set<Int>()
    var queue = [(nodeVal: Int, distance: Int)]()
    queue.append((nodeVal: target!.val, distance: 0))
    
    while !queue.isEmpty {
        let (nodeVal, distance) = queue.removeFirst()
        
        if visited.contains(nodeVal) {
            continue
        }
        
        if distance == k {
            result.append(nodeVal)
            continue
        }
        
        visited.insert(nodeVal)
        
        for neighbor in adjList[nodeVal, default: []] {
            queue.append((nodeVal: neighbor, distance: distance + 1))
        }
    }
    
    return result
}
