//
//  ScrollViewContent.swift
//  OrderApp
//
//  Created by TechFun on 12/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct Event : Identifiable {
    
    let id : Int
    let name : String
    let emoji : String
    let color : Color
    
}

let events = [
      Event(id: 0, name: "Jon's Birthday", emoji: "🥳", color: Color.red),
      Event(id: 1, name: "Wedding", emoji: "👰", color: Color.blue),
      Event(id: 2, name: "Aimee's Birthday", emoji: "🎉", color: Color.green),
      Event(id: 3, name: "Christmas", emoji: "🎄", color: Color.purple),]

struct ScrollViewContent: View {
  
    var body: some View {
        Group {
            ScrollView(.horizontal , showsIndicators : false){
                      HStack {
                          ForEach(events) { event in
                              VStack {
                                  Text(event.emoji)
                                      .font(.system(size : 50))
                                  Text(event.name)
                                      .font(.system(.caption))
                              }
                              .padding(20)
                              .background(event.color)
                              .cornerRadius(10)
                              
                          }
                      }
                  }.padding()
            
            ScrollView {
                VStack(spacing : 20) {
                    ForEach(0..<10){
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(Color.red)
                    }
                }
            }
         
        }
      
    }
}

struct ScrollViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewContent()
    }
}
