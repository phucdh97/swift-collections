//
//  NumberOfIslands.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 05/10/2022.
//

import Foundation

class NumberOfIslands {
    func numIslands(_ grid: [[Character]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var uf = ZAUnionFind<CommonUnionFindType<Int>>()
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == "1" {
                    uf.insert(CommonUnionFindType(x: i, y: j))
                    if j < n-1 && grid[i][j+1] == "1" {
                        _ = uf.union(CommonUnionFindType(x: i, y: j), and: CommonUnionFindType(x: i, y: j+1))
                    }
                    if i < m-1 && grid[i+1][j] == "1" {
                        _ = uf.union(CommonUnionFindType(x: i, y: j), and: CommonUnionFindType(x: i+1, y: j))
                    }
                }
            }
        }
        
        print("\(uf.size)")
        return uf.size
    }
}
