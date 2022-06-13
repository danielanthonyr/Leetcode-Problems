//
//  RemoveNthNode.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-13.
//

import Foundation

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    if head == nil { return nil }
    
    let dummyHead: ListNode? = ListNode()
    dummyHead?.next = head
    var p1 = dummyHead
    var p2 = dummyHead
    
    // advance second pointer by n nodes
    for _ in 0 ..< n {
        p2 = p2?.next
    }
    
    // now we can move both nodes by 1 till the second pointer reaches end of list,
    // at this point the 1st pointer is at the node right before the one we want to remove
    while p2?.next != nil {
        p1 = p1?.next
        p2 = p2?.next
    }
    
    // at this point we can remove the nth node from end of list
    p1?.next = p1?.next?.next
    
    return dummyHead?.next
}
