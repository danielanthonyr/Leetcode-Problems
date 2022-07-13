//
//  MeetingRooms2.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-07-13.
//

import Foundation

func minMeetingRooms(_ intervals: [[Int]]) -> Int {
    if intervals.isEmpty { return 0 }
    
    var maxConcurrentRoomsCount = 0
    var currentConcurrentRoomsCount = 0
    
    // 1 - create 2 sorted arrays, 1 for start times and 1 for end times
    var startTimes = [Int]()
    
    for interval in intervals {
        startTimes.append(interval[0])
    }
    
    startTimes.sort()
    
    var endTimes = [Int]()
    
    for interval in intervals {
        endTimes.append(interval[1])
    }
    
    endTimes.sort()
    
    // 2 - have two pointers and compare mins, if the min is within startTimes, +1 currentConcurrentRoomsCount , else -1 currentConcurrentRoomsCount
    
    var startPointer = 0
    var endPointer = 0
    
    while startPointer < startTimes.count && endPointer < endTimes.count {
        if startTimes[startPointer] < endTimes[endPointer] {
            currentConcurrentRoomsCount += 1
            startPointer += 1
        } else {
            currentConcurrentRoomsCount -= 1
            endPointer += 1
        }
        
        maxConcurrentRoomsCount = max(maxConcurrentRoomsCount, currentConcurrentRoomsCount)
    }
    
    return maxConcurrentRoomsCount
}
