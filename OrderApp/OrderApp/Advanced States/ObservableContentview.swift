//
//  ObservableObjects.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI


struct ObservableContentview: View {
    
    @EnvironmentObject var settings : UserSettings
    
    var body: some View {
        NavigationView{
            VStack(spacing : 16) {
                     Text("your score is \(settings.score)")
                     Spacer().frame( height: 16)
                     Button(action: {
                         self.settings.score += 1
                     }){
                         Text("Increase Score")
                     }
                
                NavigationLink(destination : UserLoginView()){
                    Text("Please login")
                }
                
                }
            
        }
     
    }
}

struct ObservableContentview_Previews: PreviewProvider {
    
    static var previews: some View {
        ObservableContentview()
    }
}
