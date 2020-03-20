//
//  PresentingView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct PresentingView: View {
    var body: some View {
        NavigationView {
            VStack(alignment : .leading , spacing : 16) {
                
                NavigationLink(destination: ShowAlertView()){
                    Text("Show Alert")
                }
                .frame(height : 50)
                .background(Color.purple)
                .cornerRadius(10)
                
                NavigationLink(destination: ShowActionSheetView()){
                                   Text("Show Sheet View")
                               }
                               .frame(height : 50)
                               .background(Color.purple)
                               .cornerRadius(10)
                
                NavigationLink(destination: ContextMenuView()){
                    Text("Show ContextMenu")
                }
                .frame(height : 50)
                .background(Color.purple)
                .cornerRadius(10)
                
                
                NavigationLink(destination: PresentViewbySheet()){
                    Text("Present new view with Sheet")
                }
                .frame(height : 50)
                .background(Color.purple)
                .cornerRadius(10)
            }
        }
    }
}

struct PresentingView_Previews: PreviewProvider {
    static var previews: some View {
        PresentingView()
    }
}
