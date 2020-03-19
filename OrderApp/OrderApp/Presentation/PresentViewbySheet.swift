//
//  PresentViewbySheet.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct PresentViewbySheet: View {
    @State private var showToggle = false
    var body: some View {
        Button(action : {
            self.showToggle.toggle()
        }){
            Text("Show detail of next screen")
        }.sheet(isPresented: $showToggle){
            NextView(isPresented: self.$showToggle)
        }
    }
}

struct PresentViewbySheet_Previews: PreviewProvider {
    static var previews: some View {
        PresentViewbySheet()
    }
}

struct NextView : View {
    
    @Binding var isPresented : Bool
    
    var body : some View {
        VStack {
            Text("This is detail view")
            Button(action : {
                self.isPresented = false
            }){
                Text("Dismiss")
            }
        }
        
      }
}
