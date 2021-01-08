//
//  TextInput.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct BoolInput: View {
    @State public var title: String
    @State public var value: Bool = false
    
    var body: some View {
        HStack{
            Text(title)
            Toggle("", isOn: $value)
        }
    }
}

struct BoolInput_Previews: PreviewProvider {
    static var previews: some View {
        BoolInput(title: "Top")
    }
}
