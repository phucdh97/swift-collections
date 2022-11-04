//
//  ZAUnionFind.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 29/09/2022.
//

import Foundation

//struct CommonUnionFindType<T: Hashable> : Hashable {
//    var x: T
//    var y: T
//}

struct CommonUnionFindType<T> : Hashable where T: Hashable {
    var x: T
    var y: T
}

struct ZAUnionFind<T: Hashable> {
    
    private var rank = [T: Int]()
    private var parent = [T: T]()
    public private(set) var size: Int = 0
    
    public init() {}
    
    public mutating func insert(_ element: T) {
        if (self.parent[element] != nil) {
            return
        }
        self.parent[element] = element
        self.rank[element] = 1
        self.size += 1
    }
    
    public mutating func find(_ element: T) -> T {
        guard let value = self.parent[element] else {
            self.insert(element)
            return element
        }
        
        if value == element {
            return value
        }
        
        let parentValue = self.find(value)
        self.parent[element] = parentValue
        
        return parentValue
    }
    
    public mutating func union(_ firstElement: T, and secondElement: T) -> Bool{
        let px = self.find(firstElement)
        let py = self.find(secondElement)
        
        if px == py {
            return false
        }
        
        guard let rankPX = self.rank[px], let rankPY = self.rank[py] else { return false }
        
        if rankPX > rankPY {
            self.parent[py] = px
        } else {
            if rankPX == rankPY {
                self.rank[py] = rankPY + 1
            }
            self.parent[px] = py
        }
        
        self.size -= 1
        return true
    }
}
