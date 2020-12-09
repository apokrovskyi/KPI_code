//
//  main.swift
//  Lab4_Swift
//
//  Created by Admin on 16.11.2020.
//

import Foundation
import Cocoa

// variant 18

let myArray: [Double] = [8,-3,15,4,-2,1,-10,1,12,-5]
let myMatrix: [[Double]] =
    [[1,2,3,4,5,6],
     [2,3,4,5,6,7],
     [-1,-2,-3,-4,-5,-6],
     [0,1,-10,4,3,-5],
     [2,3,-2,3,7,-1],
     [0,1,-10,5,3,0],
     [1,1,-7,4,3,-5],
     [-2,4,-10,4,0,-5],
     [3,1,0,4,3,-5]]

print("1. a) = \(a1(array: myArray))")
print("1. b) = \(b1(array: myArray))")
print("1. c) = \(c1(array: myArray))")
print("2. abc = \(abc2(matrix: myMatrix))")


// returns geometric avg
func a1(array: [Double]) -> Double{
    var sum: Double = 0
    for i in 0..<array.count {
        if i%3==0 {
            sum+=pow(array[i], 2)
        }
    }
    return sqrt(sum)
}

// returns sum of positive and prod of negative numbers
func b1(array: [Double]) -> (Double,Double){
    var sum: Double = 0
    var prod: Double = 1
    for i in 0..<array.count {
        if i%6==0 {
            let value = array[i]
            if value > 0{
                sum+=value
            }
            if value < 0{
                prod*=value
            }
        }
    }
    return (sum, prod)
}

// returns quantity of elements
func c1(array: [Double]) -> Int {
    var count = 0
    for i in 0..<array.count {
        if i%6==0 && array[i] > 0 {
            count+=1
        }
    }
    return count
}

func abc2(matrix: [[Double]]) -> Double{
    var min: Double = Double.infinity
    var max: Double = -Double.infinity
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[i].count{
            let value = matrix[i][j]
            if value < min{
                min = value
            }
            if value > max{
                max = value
            }
        }
    }
    
    return (min + max)/2
}
