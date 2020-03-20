//
//  BlurView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct BlurView: View {
    var body: some View {
        ZStack {
            //Image("full-english")
            //Image("power-muesli").blendMode(.multiply)
            Rectangle()
            .fill(Color.black)
            .frame(width : 200 ,height: 200)
            
            RoundedRectangle(cornerRadius: 25 , style : .continuous)
                .fill(Color.red)
                .frame(width : 200 , height : 200)
            Capsule()
                .fill(Color.green)
                .frame(width : 100 , height : 50)
            
            Ellipse()
                .fill(Color.blue)
                .frame(width : 100 , height : 50)
            Circle()
                .fill(Color.white)
                .frame(width : 100 , height : 50)
        }
        
        
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
