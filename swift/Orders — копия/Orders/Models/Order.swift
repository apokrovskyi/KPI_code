//
//  Order.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class Order: NSObject {
    private static var ID: Int = 0;
    var id: Int
    var customerId: Int
    var itemId: Int
    var deliveryId: Int
    var date: String
    
    init(customerId: Int, itemId: Int, deliveryId: Int, date: String){
        self.id = Order.ID
        Order.ID+=1
        self.customerId = customerId
        self.itemId = itemId
        self.deliveryId = deliveryId
        self.date = date
    }
    
    public func toString()->String{
        return "id: \(id) customer \(customerId) bought \(itemId)$, delivery: \(deliveryId). \(date)"
    }
}
