//
//  ItemView.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
    @ObservedObject public var items: CategoryRepo
    private var name: TextInput = TextInput(title: "Name")
    private var fee: NumberInput = NumberInput(title: "Fee")
    
    init(items: CategoryRepo){
        self.items = items
    }
    
    var body: some View {
        VStack{
            name
            fee
            Button("Add", action:{self.items.items.append(.init(name: self.name.value, fee: self.fee.getValue()))})
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

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(items: CategoryRepo.init())
    }
}
