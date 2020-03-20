//
//  Animationview.swift
//  OrderApp
//
//  Created by TechFun on 20/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct Animationview: View {
    @State var isEnabled  = false
    @State private var showToggle = false
    var items = [Color.red , Color.yellow , Color.purple , Color.green , Color.pink , Color.gray]
    var body: some View {
        
        ScrollView {
            HStack(alignment : .center){
                ForEach(items , id : \.self){ item in
                    Circle()
                    .fill(item)
                        .frame(width : 100 , height : 100)
                }
            }.padding(4)
        }
    }
}

struct Animationview_Previews: PreviewProvider {
    static var previews: some View {
        Animationview()
    }
}
