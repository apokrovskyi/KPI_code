//
//  Item.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class Item: NSObject {
    private static var ID: Int = 0;
    
    public var id: Int
    var cost: Double
    var delivery: Bool
    public var desc: String
    var category: Int

    init(cost: Double, delivery: Bool, description: String, categoryId: Int) {
        self.id = Item.ID
        Item.ID+=1
        self.cost = cost
        self.delivery = delivery
        self.desc = description
        self.category = categoryId
    }
    
    public func toString()->String{
        return "id: \(id) \(desc) costs \(cost)$, delivery: \(delivery), category: \(category)"
    }
}
