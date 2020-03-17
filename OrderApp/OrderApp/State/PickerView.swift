//
//  PickerView.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    var colors = ["Red" , "Green" , "Blue" , "Tartan"]
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    @State private var birthDate = Date()
    @State private var selectedColor = 0
    
    var body: some View {
        Group{
            VStack{
                DatePicker(selection: $birthDate, in: ...Date() , displayedComponents: .date){
                   Text("Select a date")
                }.labelsHidden()
                Text("Date is \(birthDate , formatter : dateFormatter)")
            }

                Picker("Please choose a color", selection : $selectedColor){
                     ForEach(0 ..< colors.count){
                         Text(self.colors[$0])
                     }
            }.labelsHidden()
               
                 Text("Your selected : \(colors[selectedColor])")
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
