//
//  StateControls.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct StateControlsView: View {
    @State private var showGreeting = true // data store from toggle changes
     @State private var showDetails = false
    
    var body: some View {
        
        VStack {
            
            Toggle(isOn : $showGreeting) {
                Text("Show welcome message")
            }.padding()
            
            if showGreeting {
                Text("Hello World!")
            }
            
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("Text details")
            }.padding()
            
            if showDetails {
                Text("You should follow me Ersan")
                    .font(.largeTitle)
            }

        }
    }
}

struct StateControlsView_Previews: PreviewProvider {
    static var previews: some View {
        StateControlsView()
    }
}
