//
//  ItemDetail.swift
//  OrderApp
//
//  Created by TechFun on 05/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item : MenuItem
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                .padding(4)
                .background(Color.black)
                .foregroundColor(Color.white)
                .font(.caption)
            }
            
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationBarTitle(Text(item.name) , displayMode : .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example)
        }
        
    }
}
