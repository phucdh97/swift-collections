//
//  Solution.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 08/10/2022.
//

import Foundation

class Solution: NSObject {
    static func runCode() {
        let threeSumClosest = ThreeSumClosest()
        _ = threeSumClosest.threeSumClosest(nums: [1,1,1,1], target: -100)
        
        let test = NumberOfIslands()
        _ = test.numIslands([["1","1","0","0","0"],["1","1","0","0","0"],["0","0","1","0","0"],["0","0","0","1","1"]])
        
    }
}
