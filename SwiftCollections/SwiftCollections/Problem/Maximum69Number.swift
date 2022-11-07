//
//  Maximum69Number.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 07/11/2022.
//

import Foundation


class SwiftCollections {
    func maximum69Number (_ num: Int) -> Int {
        var number = num
        var index = 0
        var rs_index: Int = -1
        
        while number > 0 {
            if number % 10 == 6 {
                rs_index = index
            }
            
            number = number/10
            index += 1
        }
        
        if rs_index == -1 {
            return num
        }
        let rs = num + 3*Int(pow(Double(10), Double(rs_index)))
        return rs
    }
}
