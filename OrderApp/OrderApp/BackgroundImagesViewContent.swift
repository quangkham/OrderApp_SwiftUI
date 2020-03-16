//
//  BackgroundImages.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct BackgroundImagesViewContent: View {
    var body: some View {
        HStack(alignment : .top , spacing : 16 ){
            Text("Nan Mauk Quang Kham")
                .font(.subheadline)
            .background(
                Image("full-english")
                .resizable())
                .frame(width: 100, height: 100)
            
            Text("Hacking with Swift")
                .font(.largeTitle)
            .background(Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200))
                //.clipped()
        }
        
      
    }
}

struct BackgroundImagesViewConten_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImagesViewContent()
    }
}
