//
//  ContentView.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var items: ItemRepo = .init()
    var categories: CategoryRepo = .init()
    var deliveries: DeliveryRepo = .init()
    var customers: CustomerRepo = .init()
    var orders: OrderRepo = .init()
    
    var body: some View {
        HStack {
            VStack {
                ItemView(items: items)
                CategoryView(items: categories)
            }
            VStack {
                OrderView(items: orders)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
