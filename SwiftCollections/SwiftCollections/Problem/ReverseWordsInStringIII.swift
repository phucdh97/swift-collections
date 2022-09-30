//
//  ReverseWordsInStringIII.swift
//  SwiftCollections
//
//  Created by Do Huu Phuc on 22/09/2022.
//


class Solution {
    func reverseWords(_ s: String) -> String {
        return s.components(separatedBy: " ").map { word in
            return String(word.reversed())
        }.joined(separator: " ")
    }
}
