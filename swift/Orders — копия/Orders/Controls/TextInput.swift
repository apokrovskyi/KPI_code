//
//  TextInput.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct TextInput: View {
    @State public var title: String
    @State public var value: String = ""
    
    var body: some View {
        HStack{
            Text(title)
            TextField("Value", text: $value)
        }
    }
}

struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        TextInput(title: "Top")
    }
}
