//
//  OrderView.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct DeliveryView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(items: OrderRepo.init())
    }
}
