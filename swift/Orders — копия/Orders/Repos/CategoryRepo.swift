//
//  CategoryRepo.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class CategoryRepo: ObservableObject {
    @Published var items: [Category] = [
        .init(name: "Vehicles", fee: 1.02)]
}
