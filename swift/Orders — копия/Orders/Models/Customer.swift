//
//  Customer.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class Customer: NSObject {
    private static var ID: Int = 0;
    var id: Int
    var name: String
    var address: String
    var phone: String
    var person: String
    
    init(name:String, address:String, phone:String, person:String){
        self.id = Customer.ID
        Customer.ID+=1
        self.name = name
        self.address = address
        self.phone = phone
        self.person = person
    }
    
    public func toString()->String{
        return "id: \(id) \(name) at \(address), phone:\(phone) (\(person))"
    }
}
