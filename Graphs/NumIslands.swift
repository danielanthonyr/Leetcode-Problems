//
//  NumIslands.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-26.
//

import Foundation

func numIslands(_ grid: [[Character]]) -> Int {
    if grid.isEmpty { return 0 }
    
    var numIslands = 0
    var visited = Set<[Int]>()
    
    for row in 0 ..< grid.count {
        for column in 0 ..< grid[row].count {
            if dfs(grid: grid, row: row, column: column, visited: &visited) {
                numIslands += 1
            }
        }
    }
    
    return numIslands
}

func dfs(grid: [[Character]], row: Int, column: Int, visited: inout Set<[Int]>) -> Bool {
    if row < 0 || row >= grid.count || column < 0 || column >= grid[0].count {
        return false
    }
    
    if grid[row][column] == "0" {
        return false
    }
    
    if visited.contains([row, column]) {
        return false
    }
    
    visited.insert([row, column])
    
    // traverse up down left right
    let up = dfs(grid: grid, row: row + 1, column: column, visited: &visited)
    let down = dfs(grid: grid, row: row - 1, column: column, visited: &visited)
    let left = dfs(grid: grid, row: row, column: column - 1, visited: &visited)
    let right = dfs(grid: grid, row: row, column: column + 1, visited: &visited)
    
    return true
}
