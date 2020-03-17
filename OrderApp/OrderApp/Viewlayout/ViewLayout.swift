//
//  ViewLayout.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ViewLayout: View {
    var body: some View {
        NavigationView{
            VStack(alignment : .trailing , spacing : 8) {
                
                NavigationLink(destination: ScrollViewContent()){
                                   Text("Scroll view")
                               }
                               .frame(height : 50)
                               .background(Color.green)
                
                NavigationLink(destination: GradientViewContent()){
                                   Text("Gradient View")
                               }
                               .frame(height : 50)
                               .background(Color.black)
                
                NavigationLink(destination: BackgroundImagesViewContent()){
                                   Text("Set background images")
                               }
                               .frame(height : 50)
                               .background(Color.yellow)
                
                NavigationLink(destination: StackContentView()){
                                   Text("Stack View")
                               }
                               .frame(height : 50)
                .background(Color.purple)
                
                NavigationLink(destination: MultipleViewsContent()){
                                   Text("Set multiple views")
                               }
                    .frame(height : 50)
                    .background(Color.pink)
                
                NavigationLink(destination: ViewwithGeometryReader()){
                                   Text("Geometry reader")
                               }
                               .frame(height : 50)
                               .background(Color.orange)
                
                NavigationLink(destination: _DeffectsContentView()){
                                   Text("Working with 3D effect")
                               }
                               .frame(height : 50)
                               .background(Color.green)
                NavigationLink(destination: GridView()){
                    Text("Setup gridview")
                }
                .frame(height : 50)
                .background(Color.gray)
                
                NavigationLink(destination: CustomFrameViewContent()){
                    Text("Setup custom frame")
                }
                .frame(height : 50)
                .background(Color.blue)
                .foregroundColor(.red)
            }.padding()
            
        .navigationBarTitle(Text("vIeW LaYoUt"))
        }
        
    }
}

struct ViewLayout_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayout()
    }
}
