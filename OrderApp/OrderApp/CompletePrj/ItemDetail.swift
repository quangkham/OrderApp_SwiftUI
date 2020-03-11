//
//  ItemDetail.swift
//  OrderApp
//
//  Created by TechFun on 05/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order : Order
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
                .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            Button("Order This"){
                       self.order.add(item: self.item)
                   }
                    .padding(4)
                    .font(.headline)
                    .background(Color.black)
                    .foregroundColor(Color.white)
            Button("Favorite"){
                self.order.addFavortieItem(item: self.item)
            }
        }
        .navigationBarTitle(Text(item.name) , displayMode : .inline)
       
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let  order = Order()
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
        
    }
}
