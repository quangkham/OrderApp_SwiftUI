//
//  GestureViewContent.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct GestureViewContent: View {
    @State private var scale : CGFloat = 1.0
    var body: some View {
        Group{
            
            VStack{
                       Image("all-out-donuts").resizable().frame(width : 50 , height : 50)
                       //Spacer().frame(height : 50)
                       Text("On Tap Gesture")
                   }
                   .contentShape(Rectangle())
                   .onTapGesture{//by increasing count number want to capture
                           //print("Double Tapped!")
                   print("Show details for Enterprise")
                   }
            
            HStack(alignment : .center){
                Image("fillet-steak").resizable().frame(width : 50, height: 50)
                           .scaleEffect(scale)
                           .gesture(TapGesture()
                                   .onEnded{ _ in
                                   self.scale += 0.1
                                   print("Zoom photo by tap gestures")
                               })
                Text ("Tap to zoom photo")
            }
            Spacer().frame(width : 100)
            HStack(alignment : .bottom){
                VStack{
                    Image("paella-alicante").resizable().frame(width :100 ,height : 50)
                                              .gesture(LongPressGesture(minimumDuration: 1)
                                                  .onEnded{ _ in
                                                      print("Pressed!")
                                                  })
                    Text("Hold and press photo")
                }
                Divider()
                VStack{
                    Image("macarons-galore-thumb").resizable().frame(width : 100 , height : 50)
                               .gesture(DragGesture(minimumDistance: 50)
                                   .onEnded{ _ in
                                       print("Dragged!")
                               })
                    Text("Drag Photo")
                }
            }
            
           
            
            
           
            
        }
       
    }
}

struct GestureViewContent_Previews: PreviewProvider {
    static var previews: some View {
        GestureViewContent()
    }
}
