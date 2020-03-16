//
//  ContentView.swift
//  OrderApp
//
//  Created by TechFun on 11/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI


struct ContentView: View{
    
    
    var body: some View {
        //VStack , HStack , padding , aligment , spacer
        Group{
            
            VStack(alignment :.center) {
                   Image("cheese-toastie")
                   .resizable()
                   .aspectRatio(contentMode: .fit)

                   Image(systemName : "cloud.heavyrain.fill")
                       .foregroundColor(Color.red)
                       .frame( height: 50)
                   HStack{
                       Text("Hacking with Swift")
                           .padding()
                           .foregroundColor(.white)
                           .background(LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .top, endPoint: .bottom))
                       Spacer(minLength: 10)
                       Text ("Nan Mauk Quang Kham")
                           .padding()
                           .foregroundColor(.purple)
                           .background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .leading, endPoint: .trailing))
                   }.padding(.init(top: 10, leading: 10, bottom: 10, trailing: 10))

               }.padding(.top , 20)

               
               //add zIndex in ZStack
            ZStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                    .zIndex(2)

               Rectangle()
                      .fill(Color.red)
                      .frame(width: 100, height: 100)
            }
        }
        
    }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
