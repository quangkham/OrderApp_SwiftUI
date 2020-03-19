//
//  ShowActionSheetView.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ShowActionSheetView: View {
    @State private var showActionSheet = false
    var body: some View {
        Button(action : {
            self.showActionSheet = true
        }){
            Text("Show ActionSheet")
        }
        .actionSheet(isPresented: $showActionSheet){
            ActionSheet(title: Text("Action sheeet"), message: Text("Show action sheet alert"), buttons: [.default(Text("Dismiss action sheet "))])
        }
        
    }
}

struct ShowActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ShowActionSheetView()
    }
}
