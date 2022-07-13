//
//  BuildingsOcean.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-07-13.
//

import Foundation

func findBuildings(_ heights: [Int]) -> [Int] {
    if heights.isEmpty { return [] }
    
    var result = [Int]()
    var prevMaxHeight = Int.min
    
    // iterate backwards
    for index in (0 ..< heights.count).reversed() {
        if heights[index] > prevMaxHeight {
            result.append(index)
            prevMaxHeight = heights[index]
        }
    }
    
    return result.reversed() // return reversed since they want in chronological order
}
