
//
//  AdjustWithOffset.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct AdjustWithOffset: View {
    var body: some View {
        
//        VStack {
//            Text("Contact")
//            Text("Phone").offset(y : 15)
//                .padding(.bottom , 15)
//            Text("Favorite")
//        }
        
        ZStack(alignment :.bottomTrailing) {
            Image("strawberry-surprise-thumb").frame(width : 200 , height : 200)
            Text("Strawberry Surprise Juice")
            .padding(4)
                .background(Color.black)
                .foregroundColor(.white)
                .offset(x : -5 , y : -5)
        }
    }
}

struct AdjustWithOffset_Previews: PreviewProvider {
    static var previews: some View {
        AdjustWithOffset()
    }
}
