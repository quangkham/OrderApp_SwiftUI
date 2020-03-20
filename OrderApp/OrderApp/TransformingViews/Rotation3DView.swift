//
//  Rotation3DView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct Rotation3DView: View {
    var body: some View {
        VStack(){
            HStack(spacing :10){
                Text("Kan Bu kan YI")
                                      .font(.largeTitle)
                                      .foregroundColor(.yellow)
                                      .rotation3DEffect(.degrees(45), axis: (x: 0 , y : 1 , z : 0))
                    .padding(.leading)
                
                Text("Yi Shen deng Ni")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .rotation3DEffect(.degrees(-45), axis: (x : 0 , y :1 ,z: 0))
                    .padding(.trailing)
            }
           
                .padding()
            Text("Tian Mi Mi")
                .font(.largeTitle)
                .foregroundColor(.green)
                .rotation3DEffect(.degrees(45), axis: (x:1 ,y: 0 ,z : 0 ))
                .padding()
            Text("Er San").scaleEffect(2 , anchor : .bottomTrailing)
            
            Text("Round Me")
            .padding()
            .background(Color.red)
            .cornerRadius(25)
                .padding()
            Text("Now you see Me")
            .padding()
                .background(Color.red)
                .opacity(0.5)// like alpha
        }
       
    }
}

struct Rotation3DView_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3DView()
    }
}
