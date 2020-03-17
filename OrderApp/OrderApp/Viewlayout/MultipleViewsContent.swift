//
//  MultipleViewsContent.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct Result : Identifiable {
    var id = UUID()
    var score : Int
}

struct MultipleViewsContent: View {
    let colors : [Color] = [.red , .green ,.blue]
    let results = [Result(score: 8), Result(score: 5) , Result(score: 10)]
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        Group{
            VStack(alignment :.leading){
                       ForEach(colors, id: \.self){ color in
                           Text(color.description.capitalized)
                           .padding()
                           .background(color)
                       }
                      
                   }
            
            VStack {
                ForEach(results , id : \.id) { result in
                    Text("Result : \(result.score)")
                    
                }
            }
        }
       
    }
}

struct MultipleViewsContent_Previews: PreviewProvider {
    static var previews: some View {
        MultipleViewsContent()
    }
}
