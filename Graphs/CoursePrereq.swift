//
//  CoursePrereq.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-26.
//

import Foundation

func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    if prerequisites.isEmpty { return true }
    
    // 1. create adjList
    var adjList = [Int: [Int]]()
    var visited = Set<Int>()
    
    for index in 0 ..< numCourses {
        adjList[index] = []
    }
    
    for prereq in prerequisites {
        adjList[prereq[0], default: []].append(prereq[1])
    }
    
    // 2. traverse list
    
    func dfs(course: Int) -> Bool {
        if adjList[course, default: []].count == 0 {
            return true
        }
        
        if visited.contains(course) {
            return false
        }
        
        visited.insert(course)
        
        for prereq in adjList[course, default: []] {
            if !dfs(course: prereq) {
                return false
            }
        }
        
        // if we make it all the way here, it means there was no cycle therefore we can take all courses
        visited.remove(course)
        adjList[course] = []
        
        return true
    }
    
    for index in 0 ..< numCourses {
        if !dfs(course: index) {
            return false // return false if at any point we detect a cycle
        }
    }
    
    return true
}
