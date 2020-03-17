//
//  GradientViewContent.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct GradientViewContent: View {
    var body: some View {
        
        //        let colors = Gradient(colors: [.red,.yellow ,.green ,.blue, .purple])
        //        let conic = RadialGradient(gradient: colors, center: .center, startRadius: 25, endRadius: 100)
        //                return Circle()
        //                    .fill(conic)
        //                .frame(width: 100, height: 100)
                    
        let colors2 = Gradient(colors: [.red,.yellow ,.green ,.blue, .purple ,.red])
        let conic2 = AngularGradient(gradient: colors2, center: .center , startAngle: .zero, endAngle: .degrees(360))
                return Circle()
        .strokeBorder(conic2 , lineWidth: 20)
        
    }
}

struct GradientViewContent_Previews: PreviewProvider {
    static var previews: some View {
        GradientViewContent()
    }
}
