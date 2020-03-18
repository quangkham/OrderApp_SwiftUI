//
//  CustomBindingsView.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct CustomBindingsView: View {
    @State private var username = ""
    @State private var  firstToggle = false
    @State private var secondToggle = false
    

    
    var body : some View {
        
        let binding = Binding(
                    get: { self.username},
                    set: {self.username = $0
                        if $0 == " "{
                            self.username = "Quang"
                        }
        })
                
        let firstBinding = Binding(
            get: { self.firstToggle},
            set: {
                self.firstToggle = $0
                if $0 == true{
                    self.secondToggle = false
                }
        })
        
        let secondBinding = Binding(
            get: {self.secondToggle},
            set: {
                self.secondToggle = $0
                if $0 == true{
                    self.firstToggle = false
        }
        })
        
        return VStack{
            
            TextField("Enter your name",text: binding )
            Toggle(isOn : firstBinding){
            Text("First toggle")
            }
            Toggle(isOn : secondBinding){
                Text("Second toggle")
            }
        }
    }
}


struct CustomBindingsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBindingsView()
    }
}
