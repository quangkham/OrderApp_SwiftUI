//
//  ColorOfPadding.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ColorOfPadding: View {
    var body: some View {
        VStack {
            Text ("Hacking With Swift")
                       .padding(8)
                       .background(Color.black)
                       .foregroundColor(.white)
            
            Text("Hacking With Swift")
                   .foregroundColor(.white)
                .background(Color.red)
            .padding()
             
            
            Text("Forecasting : Sun")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.black)
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.yellow)
            
            Text("Hacking With Swift")
                .padding()
                .border(Color.red , width : 4)
            .padding()
            .border(Color.black , width : 4)
            .padding()
            
            Text("hacking with Swift")
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(Color.blue , lineWidth:  4))
            
            Circle().strokeBorder(Color.blue , lineWidth: 50)
        }
       
        
    }
}

struct ColorOfPadding_Previews: PreviewProvider {
    static var previews: some View {
        ColorOfPadding()
    }
}
