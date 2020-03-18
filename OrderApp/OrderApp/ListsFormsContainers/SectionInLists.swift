//
//  SectionInLists.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct SectionInLists: View {
    var body: some View {
        List {
            Section(header: Text("Important Tasks")){
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header : Text("Other Tasks") , footer: Text("End")){
                TaskRow()
                TaskRow()
                TaskRow()
            }
        }.listStyle(GroupedListStyle())
            .listRowBackground(Color.red)
        
    }
}

struct SectionInLists_Previews: PreviewProvider {
    static var previews: some View {
        SectionInLists()
    }
}


struct TaskRow : View{
    var body : some View {
        Text("Task To Do")
    }
}
