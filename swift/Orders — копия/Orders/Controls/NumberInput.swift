//
//  TextInput.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct NumberInput: View {
    @State public var title: String
    @State private var text: String = ""
    public func getValue()->Double{
        if let val = Double(text){
            return val
        }
        
        return 0;
    }
    
    var body: some View {
        HStack{
            Text(title)
            TextField("Value", text: $text)
        }
    }
}

struct NumberInput_Previews: PreviewProvider {
    static var previews: some View {
        NumberInput(title: "Top")
    }
}
