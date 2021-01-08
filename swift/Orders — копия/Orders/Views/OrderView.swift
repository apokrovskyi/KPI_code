//
//  ItemView.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject public var items: OrderRepo
    private var customer: IntInput = IntInput(title: "Customer")
    private var item: IntInput = IntInput(title: "Item")
    private var delivery: IntInput = IntInput(title: "Delivery")
    private var date: TextInput = TextInput(title: "Date")
    
    init(items: OrderRepo){
        self.items = items
    }
    
    var body: some View {
        VStack{
            customer
            item
            delivery
            date
            Button("Add", action:{self.items.items.append(.init(customerId: self.customer.getValue(), itemId: self.item.getValue(), deliveryId: self.delivery.getValue(), date: self.date.value))})
            List {
                ForEach(items.items, id: \.self) { item in
                    HStack{
                        Text(item.toString())
                        Button("Delete", action: {
                            let index = self.items.items.firstIndex(of: item)
                            if let val = index{
                                self.items.items.remove(at: val)
                            }
                        })
                    }
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(items: OrderRepo.init())
    }
}
