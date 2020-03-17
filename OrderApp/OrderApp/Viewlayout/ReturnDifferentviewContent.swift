//
//  ReturnDifferentviewContent.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI
// return different view types
struct ReturnDifferentviewContent: View {
    var body: some View {
//        Group{
//
//            if Bool.random(){
//                Image("full-english")
//            }else {
//                Text("Better luck next time")
//            }
//        }
        
        if Bool.random() {
            return AnyView(Image("full-english"))
        }else {
            return AnyView(Text("Better luck next time"))
        }
    }
}

struct ReturnDifferentviewContent_Previews: PreviewProvider {
    static var previews: some View {
        ReturnDifferentviewContent()
    }
}
