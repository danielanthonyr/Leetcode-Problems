//
//  ImplementTrie.swift
//  Leetcode-Problems
//
//  Created by daniel on 2022-06-13.
//

import Foundation

class TrieNode {
    var children: [Character: TrieNode]
    var isWord: Bool
    
    init() {
        children = [Character: TrieNode]()
        isWord = false
    }
}

class Trie {
    
    var root: TrieNode
    
    init() {
        self.root = TrieNode()
    }
    
    func insert(_ word: String) {
        var current = root
        
        for ch in word {
            // character we are looking at already exists, keep going down the trie
            if current.children[ch] == nil {
                current.children[ch] = TrieNode()
            }
            
            current = current.children[ch]!
        }
        
        current.isWord = true // at end of iterating through all chars in word, mark as a complete word in true
    }
    
    func search(_ word: String) -> Bool {
        var current = root
        
        for ch in word {
            if current.children[ch] == nil {
                return false
            }
            
            current = current.children[ch]!
        }
        
        return current.isWord
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var current = root
        
        for ch in prefix {
            if current.children[ch] == nil {
                return false
            }
            
            current = current.children[ch]!
        }
        
        return true
    }
}
