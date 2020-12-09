//
//  main.swift
//  Lab5-7_Swift
//
//  Created by Admin on 16.11.2020.
//

import Foundation
import Cocoa

//Lab 5
// набір з парними цифрами
let evenDigits: Set = [0, 2, 4, 6, 8]
// набір з непарними цифрами
let oddDigits: Set = [1, 3, 5, 7, 9]
// набір з змішаними цифрами
var differentDigits: Set = [3, 4, 7, 8]
var inter = differentDigits.intersection(oddDigits).sorted()
print("Cross values = \(inter)")

var aSet: Set = [1, 2, 3, 4, 5]
var bSet: Set = [1, 3]
if bSet.isStrictSubset(of: aSet) {
    print("bSet — субнабір для aSet")
}
if aSet.isStrictSuperset(of: bSet) {
    print("aSet — супернабір для bSet")
}
//Lab 6
typealias Chessman = [String:(alpha:Character,num:Int)?]; //шахова фігура
let chessmans: Chessman = [
    "Бiла королева": (alpha: "A", num: 4),
    "Бiлий кiнь": (alpha: "B", num: 7),
    "Чорна тура": nil]

if let coordinates = chessmans["Бiла королева"]  ?? nil {
    print("Бiла королева: \(coordinates)")
} else {
    print("Білої королеви нема на ігровому полі")
}

if let coordinates = chessmans["Белый конь"] ?? nil {
    print("Белый конь: \(coordinates)")
} else {
    print("Бiлого коня нема на ігровому полі")
}

if let coordinates = chessmans["Чорна тура"] ?? nil {
    print("Чорна тура: \(coordinates)")
} else {
    print("Чорної тури нема на ігровому полі")
}

//Lab 7
let myLine: Segment = ((0,0), (1,0))
let myArr: [Segment] = [((1,1), (1,-1)), ((1,2), (2,1)), ((-3,1), (-2, -2))]
for i in 0..<myArr.count{
    print(diffHalves(line: myLine, p1: myArr[i].0, p2: myArr[i].1))
}

typealias Point = (Double, Double)
typealias Segment = (Point, Point)

func dist(p1: Point, p2: Point) -> Double {
    return sqrt(pow(p1.0-p2.0,2)+pow(p1.1-p2.1, 2))
}

func cross(p1: Point, p2: Point) -> Double{
    return p1.0*p2.1-p1.1*p2.0
}

func sub(p1: Point, p2: Point)->Point{
    return (p1.0-p2.0, p1.1-p2.1)
}

func diffHalves(line: Segment, p1: Point, p2: Point) -> Bool{
    let linevec = sub(p1:line.1,p2:line.0)
    let pn1 = sub(p1:p1,p2:line.0)
    let pn2 = sub(p1:p2,p2:line.0)
    return cross(p1: linevec, p2: pn1) * cross(p1:linevec, p2: pn2) < 0
}
