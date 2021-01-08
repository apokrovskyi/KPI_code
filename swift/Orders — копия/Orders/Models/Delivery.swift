//
//  Delivery.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class Delivery: NSObject {
    private static var ID: Int = 0;
    var id: Int
    var name: String
    var cost: Double
    var time: Int
    
    init(name: String, cost: Double, time: Int){
        self.id = Delivery.ID
        Delivery.ID+=1
        self.name = name
        self.cost = cost
        self.time = time
    }
    
    public func toString()->String{
        return "id: \(id) \(name) costs \(cost)$, takes: \(time) hours"
    }
}
