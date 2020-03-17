//
//  CustomFrameViewContent.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct CustomFrameViewContent: View {
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            Text("Welcome")
                .frame(minWidth: 0, maxWidth: 100, minHeight : 0 ,maxHeight: 100)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(Color.red)
               //.edgesIgnoringSafeArea(.all) // for maxWidth & maxHeight 'infinity'(outside of the safe area)
        }
    }
}

struct CustomFrameViewContent_Previews: PreviewProvider {
    static var previews: some View {
        CustomFrameViewContent()
    }
}
