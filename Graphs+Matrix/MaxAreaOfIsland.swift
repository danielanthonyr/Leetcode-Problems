//
//  MaxAreaOfIsland.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-26.
//

import Foundation

func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
    if grid.isEmpty { return 0 }
    
    var area = 0
    var visited = Set<[Int]>()
    
    for row in 0 ..< grid.count {
        for column in 0 ..< grid[0].count {
            area = max(area, dfs(grid: grid, row: row, column: column, visited: &visited))
        }
    }
    
    return area
}

func dfs(grid: [[Int]], row: Int, column: Int, visited: inout Set<[Int]>) -> Int {
    if row < 0 || row >= grid.count || column < 0 || column >= grid[0].count {
        return 0
    }
    
    if grid[row][column] == 0 {
        return 0
    }
    
    if visited.contains([row, column]) {
        return 0
    }
    
    visited.insert([row, column])
    
    // traverse list up down left right
    var area = 1
    area += dfs(grid: grid, row: row + 1, column: column, visited: &visited)
    area += dfs(grid: grid, row: row - 1, column: column, visited: &visited)
    area += dfs(grid: grid, row: row, column: column - 1, visited: &visited)
    area += dfs(grid: grid, row: row, column: column + 1, visited: &visited)
    
    return area
}
