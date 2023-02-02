//
//  main.swift
//  BaekJoon#1158
//
//  Created by 김병엽 on 2023/02/02.
//

import Foundation

func solution() {

    let input = readLine()!.split(separator: " ").map { Int(String($0))! }

    var array: [Int] = Array(1...input[0])
    var result: [Int] = []
    var index = input[1] - 1

    while true {
        
        result.append(array.remove(at: index))
        if array.isEmpty { break }
        index = (index + input[1] - 1) % array.count

    }
    
    print("<" + result.map({ String($0) }).joined(separator: ", ") + ">")
}

solution()
