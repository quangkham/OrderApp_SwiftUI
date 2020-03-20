//
//  ShadowAroundView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ShadowAroundView: View {
    var body: some View {
        VStack {
            Text("Hacking with Swift")
            .padding()
                .border(Color.red , width : 4)
                .shadow(color: Color.red ,radius: 5 , x : 20 , y: 20)
                .padding(.bottom , 20)
            
            Button(action : {
                print("button tapped")
            }){
                Image(systemName: "bolt.fill")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Circle())
            }
            
            Button(action : {
                print("Button tapped")
            }){
                Image(systemName: "bolt.fill")
                    .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(Color.green)
                .clipShape(Capsule())
            }
            
            Text("Up we go")
                .rotationEffect(.degrees(45))
            Text("Down we go")
                .rotationEffect(.degrees(-45), anchor: .bottomTrailing)
        }
        
            
    }
}

struct ShadowAroundView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowAroundView()
    }
}
