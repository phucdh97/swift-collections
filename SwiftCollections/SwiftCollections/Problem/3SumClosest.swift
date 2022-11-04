//
//  3SumClosest.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 08/10/2022.
//

import Foundation

class ThreeSumClosest {
    public func threeSumClosest(nums:[Int], target: Int) -> Int {
        let nums = nums.sorted()
        let length = nums.count
        var ans = Int.max
        
        for i in 0..<length-2 {
            var left = i+1
            var right = length-1
            while left < right {
                let curSum = nums[i] + nums[left] + nums[right]
                if curSum == target {
                    return target
                }
                if ans == Int.max || abs(target - curSum) < abs(target - ans) {
                    ans = curSum
                }
                if curSum < target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return ans
    }
}
