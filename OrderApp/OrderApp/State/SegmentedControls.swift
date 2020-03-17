//
//  SegmentedControls.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct SegmentedControls: View {
    @State private var favoriteColor = 0
    var colors = ["Red" ,"Green" , "Blue"]
    
    var body: some View {
        VStack{
            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                ForEach(0..<colors.count){ index in
                    Text(self.colors[index]).tag(index)
                }
                
            }.pickerStyle(SegmentedPickerStyle())
            Text("Value :\(colors[favoriteColor])")
            
        }
    }
}

struct SegmentedControls_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControls()
    }
}
