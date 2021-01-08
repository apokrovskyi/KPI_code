//
//  ItemRepo.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class ItemRepo: ObservableObject {
    @Published var items: [Item] = [
        .init(cost: 1000, delivery: true, description: "Car",categoryId: 0),
        .init(cost: 20, delivery: true, description: "Bike", categoryId:0)]
}
