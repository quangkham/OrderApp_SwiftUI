//
//  RotatingView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct RotatingView: View {
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Slider(value: $rotation, in: 0...360 , step: 1.0)
                .padding()
            Text("Up we go").rotationEffect(.degrees(rotation), anchor: .topLeading)
        }
       
    }
}

struct RotatingView_Previews: PreviewProvider {
    static var previews: some View {
        RotatingView()
    }
}
