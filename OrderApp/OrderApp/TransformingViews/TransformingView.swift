//
//  TransformingView.swift
//  OrderApp
//
//  Created by TechFun on 19/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct TransformingView: View {
    var body: some View {
        NavigationView{
            VStack(alignment : .leading , spacing : 16) {
                NavigationLink(destination: AdjustWithOffset()){
                    Text("Offset")
                }
                .frame(height : 50)
                .background(Color.yellow)
                .cornerRadius(10)
                
                NavigationLink(destination :ColorOfPadding()){
                    Text("Padding Color")
                }
                .frame(height :50)
                .background(Color.orange)
                .cornerRadius(10)
                
                NavigationLink(destination : ShadowAroundView()){
                    Text("Add shadow aorund view")
                }.frame(height : 50)
                    .background(Color.red)
                    .cornerRadius(10)
                
                NavigationLink(destination : RotatingView()){
                    Text("Rotate View")
                }.frame(height : 50)
                    .background(Color.pink)
                    .cornerRadius(10)
                
                NavigationLink(destination : Rotation3DView()){
                    Text("Rotate for 3D View")
                }.frame(height : 50)
                    .background(Color.black)
                    .cornerRadius(10)
                
                NavigationLink(destination : BlurView()){
                    Text("Add Blur effect to View")
                }.frame(height : 50)
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            
        }
    }
}

struct TransformingView_Previews: PreviewProvider {
    static var previews: some View {
        TransformingView()
    }
}
