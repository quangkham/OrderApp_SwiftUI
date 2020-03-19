//
//  PickerInForm.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct PickerInForm: View {
    var strengths = ["Mild" , "Medium" ,"Mature"]
    @State private var selectedStrength = 0
    @State private var agreedToTerms = false
    @State private var hideStatusBar = true
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedStrength, label: Text("Strength")){
                        ForEach(0 ..< strengths.count){
                            Text(self.strengths[$0]).tag($0)
                        }
                    }.labelsHidden()//.pickerStyle(WheelPickerStyle()) //in form type want to change wheelStyle because default sytle of picker in form is List type
                }
                
                Section(header : Text("Terms and Conditions")) {
                    Toggle(isOn : $agreedToTerms) {
                        Text("Agree to terms and conditions")
                    }
                }
                
                Section(header : Text("Please continue!!!!!!")){
                    Button(action : {
                        //NavigationLink(destination: BasicForm)
                        
                    }){
                        Text("Continue")
                    }.disabled(!agreedToTerms)
                    
                    Button("Toggle Status bar") {
                        withAnimation{
                            self.hideStatusBar.toggle()
                        }
                    }
                    .statusBar(hidden: hideStatusBar)
                }
            }
            .navigationBarTitle("Select your cheese" , displayMode:  .inline)
        }
    }
}

struct PickerInForm_Previews: PreviewProvider {
    static var previews: some View {
        PickerInForm()
    }
}
