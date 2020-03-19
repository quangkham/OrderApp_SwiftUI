//
//  BasicForm.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct BasicForm: View {
    @State private var enableLoggin = false
    @State private var showingAdvancedOptions = false
    @State private var selectedColor = 0
    @State private var colors = ["Red" , "Green" , "Blue"]
    var body: some View {
        NavigationView{
            Form {
                
                Section (footer: Text("Note : Enable Logging  may slow download app")){
                    Picker(selection: $selectedColor, label: Text("Select a color")){
                        ForEach(0 ..< colors.count) {
                            Text(self.colors[$0]).tag($0)
                            
                        }
                    }//.pickerStyle(SegmentedPickerStyle())
                    
                    
                    Toggle(isOn : $enableLoggin){
                        Text("Enable Logging")
                    }
                    
                    
                }
                
                Section {
                    
                    Button(action: {
                        // to do
                    }){
                        Text("Save Changes")
                    }
                    
                    Toggle(isOn : $showingAdvancedOptions.animation()){
                        Text ("Showing Advanced Options")
                    }
                    if showingAdvancedOptions {
                        Toggle(isOn : $enableLoggin){
                            Text("Enable Logging")
                        }
                    }
                }
            }.navigationBarTitle("Settings" )
            .navigationBarItems(trailing:
                HStack {
                    Button("About"){
                        print("About tap")
                    }
                    Button("Help"){
                        print("Help tap")
                    }
                }
            )
        }
        
    }
}

struct BasicForm_Previews: PreviewProvider {
    static var previews: some View {
        BasicForm()
    }
}
