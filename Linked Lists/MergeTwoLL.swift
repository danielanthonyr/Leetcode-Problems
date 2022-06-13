//
//  MergeTwoLL.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-13.
//

import Foundation

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var p1 = list1
    var p2 = list2
    
    let dummyHead = ListNode()
    var curr = dummyHead
    
    while p1 != nil && p2 != nil {
        if p1!.val <= p2!.val {
            curr.next = p1
            p1 = p1?.next
        } else {
            curr.next = p2
            p2 = p2?.next
        }
        
        curr = curr.next!
    }
    
    // only p1 list remaining
    if p1 != nil {
        curr.next = p1
    }
    
    // only p2 list remaining
    if p2 != nil {
        curr.next = p2
    }
    
    return dummyHead.next
}
