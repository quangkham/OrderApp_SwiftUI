//
//  AdancedStatesView.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct AdancedStatesView: View {
 
    var body: some View {
        VStack(spacing : 10){
            
//            NavigationLink(destination : ObservableContentview()){
//                Text("ObservableObjects")
//            }
//            .cornerRadius(5)
//
//            .frame(height : 50)
//
//            .background(Color.orange)
            
//            NavigationLink(destination : UserLoginView()){
//                Text("User Authentication")
//            }.cornerRadius(5)
//                .frame(height : 50)
//                .background(Color.orange)
            
            NavigationLink(destination : CustomBindingsView()){
                Text("Custom Binding")
            }.cornerRadius(5)
                .frame(height : 50)
                .background(Color.orange)
        }
        
        
        
    }
}

struct AdancedStatesView_Previews: PreviewProvider {
    static var previews: some View {
        AdancedStatesView()
    }
}
