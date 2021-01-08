//
//  Category.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class Category: NSObject {
    private static var ID: Int = 0;
    var id: Int
    var name: String
    var deliveryFee: Double
    
    init(name: String, fee: Double) {
        self.id = Category.ID
        Category.ID+=1
        self.name = name
        self.deliveryFee = fee
    }
    
    public func toString()->String{
        return "id: \(id) \(name) with fee of \(deliveryFee)$"
    }
}
