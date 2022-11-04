//
//  IntegerToRoma.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 20/10/2022.
//

import Foundation

class IntegerToRoma {
    func intToRoman(_ num: Int) -> String {
        var num = num
        let stringNum = "\(num)"
        let length = stringNum.count
        // 0: đơn vị    1: chục     2: trăm     3: nghìn
        let base = [["I","V"], ["X","L"], ["C","D"], ["M",""]]
        
        let edgeCase = [4,9]
        let pivot = 5
        
        
        var i = 0
        var ans = ""
        var digit = 0
        
        while i < length {
            digit = num % 10
            if digit == edgeCase[0] {
                ans = base[i][0] + base[i][1] + ans
            } else if digit == edgeCase[1] {
                ans = base[i][0] + base[i+1][0] + ans
            } else if digit >= pivot {
                let remain = digit - pivot
                var val = base[i][1]
                for _ in 0..<remain {
                    val += base[i][0]
                }
                ans = val + ans
            } else if digit > 0 {
                var val = ""
                for _ in 0..<digit {
                    val += base[i][0]
                }
                ans = val + ans
            }
            i += 1
            num = num/10
        }
        
        return ans
        
    }
}
