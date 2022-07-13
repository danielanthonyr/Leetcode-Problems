//
//  PalindromeLL.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-07-13.
//

import Foundation

func isPalindrome(_ head: ListNode?) -> Bool {
    if head == nil { return false }
    
    var array = [Int]()
    var curr: ListNode? = head!
    
    while curr != nil {
        array.append(curr!.val)
        curr = curr!.next
    }
    
    // now run two pointers on array from both ends
    
    var left = 0
    var right = array.count - 1
    
    while left <= right {
        if array[left] != array[right] {
            return false
        }
        
        left += 1
        right -= 1
    }
    
    return true
}
