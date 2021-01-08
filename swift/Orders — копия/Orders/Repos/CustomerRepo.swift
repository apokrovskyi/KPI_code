//
//  CustomerRepo.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import Cocoa

class CustomerRepo: ObservableObject {
    @Published var items: [Customer] = [
        .init(name: "Company 1", address: "Kyiv, UA", phone: "123456879", person: "Andrii Pokrovskyi")]
}
