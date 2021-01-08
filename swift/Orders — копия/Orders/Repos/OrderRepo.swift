//
//  OrderRepo.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class OrderRepo: ObservableObject {
    @Published var items: [Order] = [
    .init(customerId: 0, itemId: 0, deliveryId: 0, date: "11.11.2011")]
}
