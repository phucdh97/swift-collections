//
//  ZAStack.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 20/09/2022.
//

import Foundation

struct ZAStack<Element> {
    private var array: [Element] = []
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
      return array.isEmpty
    }
    
    public mutating func push(_ element: Element) {
        array.append(element)
        // You might be wondering why appending items to an array is O(1) or a constant-time operation. That is because an array in Swift always has some empty space at the end.
    }
    
    public mutating func pop() -> Element? {

        return array.popLast()
    }
    
    public var top: Element? {
        return array.last
    }
}

extension ZAStack: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        let stackElement = array.map({"\($0)"}).reversed().joined(separator: "\n")
        return topDivider + stackElement + bottomDivider
    }
}

