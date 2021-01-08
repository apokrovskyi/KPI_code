//
//  DeliveryRepo.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class DeliveryRepo: ObservableObject {
    @Published var items: [Delivery] = [
        .init(name: "Courier", cost: 100, time: 48)]
}
