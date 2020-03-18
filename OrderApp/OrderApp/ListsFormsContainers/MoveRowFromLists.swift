//
//  MoveRowFromLists.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct MoveRowFromLists: View {
    @State private var users = ["James", "Jennifer" , "Edward Jack" , "Lorenz"]
    var body: some View {
        NavigationView{
            List {
                ForEach(users , id : \.self) { user in
                    Text("Name \(user)")
                }.onMove(perform: move)
            }
        .navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(fromSource : IndexSet , toDestination : Int) {
        users.move(fromOffsets: fromSource, toOffset: toDestination)
    }
    
}

struct MoveRowFromLists_Previews: PreviewProvider {
    static var previews: some View {
        MoveRowFromLists()
    }
}
