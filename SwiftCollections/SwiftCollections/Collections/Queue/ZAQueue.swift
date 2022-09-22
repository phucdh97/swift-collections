//
//  ZAQueue.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 20/09/2022.
//

import Foundation

fileprivate let maxSize = 50

//https://www.raywenderlich.com/848-swift-algorithm-club-swift-queue-data-structure

struct ZAQueue<T> {
    private var array:[T?] = []
    private var head = 0
    
    public var count: Int {
        return array.count - head
    }
    
    public var isEmpty: Bool {
      return count == 0
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let ele = array[head] else {
            return nil
        }
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
        if array.count > maxSize && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return ele
    }
    
    public var front: T? {
        if isEmpty {
            return nil
        }
        return array[head]
    }
}
