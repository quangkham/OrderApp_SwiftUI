//
//  DeleteRowFromLists.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct DeleteRowFromLists: View {
    @State private var users = ["James", "Jennifer" , "Edward Jack" , "Lorenz"]
    var body: some View {
        NavigationView{
            List {
                           ForEach(users , id : \.self){ user in
                               Text("Name \(user)")
                           }
                           .onDelete(perform: delete)
            }.listRowBackground(Color.red)
        .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets : IndexSet){
        users.remove(atOffsets: offsets)
    }
}

struct DeleteRowFromLists_Previews: PreviewProvider {
    static var previews: some View {
        DeleteRowFromLists()
    }
}
