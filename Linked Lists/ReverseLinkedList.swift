//
//  ReverseLinkedList.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-12.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
    
    var curr = head
    var prev: ListNode? = nil
    
    while curr != nil {
        let temp = curr?.next
        curr?.next = prev
        prev = curr
        curr = temp
    }
    
    return prev
}
