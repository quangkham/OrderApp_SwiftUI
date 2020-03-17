//
//  SliderView.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @State private var celsius : Double = 0
    
    var body: some View {
        VStack {
            Slider(value : $celsius, in : -20...100 , step: 0.1)
            Text("\(Int(celsius)) Celsius is \(Int(celsius) * 9 / 5 + 32) Fahrenheit")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
