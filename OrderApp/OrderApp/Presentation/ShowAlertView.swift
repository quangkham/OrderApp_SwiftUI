//
//  ShowAlertView.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ShowAlertView: View {
    
    @State private var showAlert1 = false
    @State private var showAlert2 = false
    
    var body: some View {
        VStack(spacing : 16) {
            Button(action : {
                       self.showAlert1 = true
                   }){
                       Text("Show Alert1")
                   }.alert(isPresented: $showAlert1){
                    Alert(title: Text("Important Messages"), message: Text("Not to go public area"), dismissButton: .cancel())
            }.background(Color.red)
            
            Button(action : {
                self.showAlert2 = true
            }){
                Text("Show Alert2")
            }.alert(isPresented: $showAlert2){
                Alert(title: Text("Testing for delete messages"), message: Text("Text Message"), primaryButton: .destructive(Text("Delete"), action: {
                    print("Deleting") // something to do
                }), secondaryButton: .cancel())
            }
            .background(Color.red)
        }.padding()
       
    }
}

struct ShowAlertView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAlertView()
    }
}
