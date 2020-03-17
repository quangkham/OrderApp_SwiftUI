//
//  StackContentView.swift
//  OrderApp
//
//  Created by TechFun on 12/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct StackContentView: View {
    var body: some View {
  
        VStack(alignment : .center , spacing : 20){
                    Text("Swift UI")
                    Divider()
                    Text("rocks")
                   }
                   
    }
}

struct StackContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView()
    }
}
