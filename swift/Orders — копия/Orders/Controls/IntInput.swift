//
//  TextInput.swift
//  Orders
//
//  Created by Admin on 08.01.2021.
//  Copyright © 2021 apokrovskyi. All rights reserved.
//

import SwiftUI

struct IntInput: View {
    @State public var title: String
    @State private var text: String = ""
    public func getValue()->Int{
        if let val = Int(text){
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

struct IntInput_Previews: PreviewProvider {
    static var previews: some View {
        IntInput(title: "Top")
    }
}
