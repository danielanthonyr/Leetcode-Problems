//
//  MergeIntervals.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-05-26.
//

import Foundation

func merge(_ intervals: [[Int]]) -> [[Int]] {
    if intervals.isEmpty { return [] }
    
    // 1. sort the intervals array by start time so we can compare following end times vs previous start times
    var sortedIntervals = intervals.sorted {
        $0[0] < $1[0]
    }
    
    // 2. if next interval start time <= previous interval end time, merge them ... otherwise add current interval
    var mergedIntervals = [[Int]]()
    mergedIntervals.append(sortedIntervals[0])
    
    for index in 1 ..< sortedIntervals.count {
        let previousInterval = mergedIntervals[mergedIntervals.count - 1]
        if sortedIntervals[index][0] <= previousInterval[1] {
            mergedIntervals[mergedIntervals.count - 1] = [
                min(previousInterval[0], sortedIntervals[index][0]),
                max(previousInterval[1], sortedIntervals[index][1])
            ]
        } else {
            mergedIntervals.append(sortedIntervals[index])
        }
    }
    
    return mergedIntervals
}
