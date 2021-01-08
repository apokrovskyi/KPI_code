//
//  ItemView.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    @ObservedObject public var items: ItemRepo
    private var description: TextInput = TextInput(title: "Desc")
    private var cost: NumberInput = NumberInput(title: "Cost")
    private var delivery: BoolInput = BoolInput(title: "Delivery")
    private var category: IntInput = IntInput(title: "Category")
    
    init(items: ItemRepo){
        self.items = items
    }
    
    var body: some View {
        VStack{
            description
            cost
            delivery
            Button("Add", action:{self.items.items.append(.init(cost: self.cost.getValue(), delivery: self.delivery.value, description: self.description.value, categoryId: self.category.getValue()))})
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

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(items: ItemRepo.init())
    }
}
