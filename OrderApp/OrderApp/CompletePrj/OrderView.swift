//
//  OrderView.swift
//  OrderApp
//
//  Created by TechFun on 06/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order : Order
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(order.items){ item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                    }.onDelete(perform: deleteItems)
                }
                 
                Section {
                    ForEach(order.items){ item in
                        Text(item.name)
                        
                    }
                }
                Section{
                    NavigationLink(destination: CheckOutView()){
                        Text("Place Order")
                    }
                }.disabled(order.items.isEmpty)
                
              
            }
            .navigationBarTitle("Order")
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton())
        }
 
    }
    
    func deleteItems(at offsets : IndexSet){
        order.items.remove(atOffsets : offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}

