//
//  ContextMenuView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        HStack {
            
            Text("Options").contextMenu{
                Button(action : {}){
                    Text("Choose Country")
                    Image(systemName: "globe")
                }
                
                Button(action : {}){
                    Text("Detect Location")
                    Image(systemName: "location.circle")
                }
            }
        }
        
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
