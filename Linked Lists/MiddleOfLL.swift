//
//  MiddleOfLL.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-28.
//

import Foundation

func middleNode(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
    
    var p1 = head
    var p2 = head
    
    while p2?.next != nil {
        p1 = p1?.next
        p2 = p2?.next?.next
    }
    
    return p1
}
