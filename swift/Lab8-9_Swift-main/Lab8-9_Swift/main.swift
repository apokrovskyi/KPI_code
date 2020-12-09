//
//  main.swift
//  Lab8-9_Swift
//
//  Created by Admin on 23.11.2020.
//

import Foundation
import Cocoa

//Lab8
func _where(wallet: [Int], condition: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if condition(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}

// функція порівняння із числом 100
func compare100(banknot: Int) -> Bool {
    return banknot == 100
}

// функція порівняння із числом 1000
func compareMore1000(banknot: Int) -> Bool {
    return banknot >= 1000
}

var wallet = [10, 50, 100, 100, 5000, 100, 50, 50, 500, 100]
print("My 100 comparison = \(_where(wallet: wallet, condition: compare100))")
print("My 1000 comparison = \(_where(wallet: wallet, condition: compareMore1000))")
print("My 100 filter = \(wallet.filter(compare100))")
print("My 1000 filter = \(wallet.filter(compareMore1000))")

// відбір купюр номіналом вище 200 гривень
var filter1 = _where(wallet: wallet, condition: {(banknot: Int) -> Bool in
    return banknot>=200
})
// відбір купюр номіналом 100 гривень
var filter2 = _where(wallet: wallet, condition: {(banknot: Int) -> Bool in
    return banknot==100
})

var array = [1,44,81,4,277,50,101,51,8]
var sortedArray = array.sorted(by: <)
print("Sorted array = \(sortedArray)")

//Lab9
var oldArray = [ 3, 1, 4, 2]
var newArray = oldArray.map{$0*$0}
print("New array = \(newArray)")

let someArray = [[1, 2, 3, 4, 5], [5,4,3,2,1], [26, 43, 123, 66]]
//flatMap теперь compactMap
let filterSomeArray = someArray.compactMap({$0.filter{ $0 % 2 == 0}})
print("New filteredArray = \(filterSomeArray)")

let numbers = [7,9,18,22]
let even = numbers.filter{ $0 % 3 == 0 }
print("Even = \(filterSomeArray)")

let cash = [10, 50, 100, 500]
let total = cash.reduce(0, +)
print("Total = \(total)")
