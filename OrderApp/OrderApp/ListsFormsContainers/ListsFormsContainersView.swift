//
//  ListsFormsContainersView.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ListsFormsContainersView: View {
    var body: some View {
        NavigationView{
            VStack(alignment : .leading ,spacing : 16 ){
                NavigationLink(destination : ListsView()){
                    Text("List View")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
                
                NavigationLink(destination : DeleteRowFromLists()){
                    Text("Delete Row From List")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
                
                NavigationLink(destination : MoveRowFromLists()){
                    Text("Move Row From List")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
                
                NavigationLink(destination : SectionInLists()){
                    Text("Section In Lists")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
                
                NavigationLink(destination : ImplicitStacking()){
                    Text("Implicit Stack")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
                
                NavigationLink(destination : BasicForm()){
                    Text("Create Form")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
                
                NavigationLink(destination : PickerInForm()){
                    Text("Picker in Form")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
            }
            .navigationBarTitle("List & Form with Containers" , displayMode:  .inline)
        }
    }
}

struct ListsFormsContainersView_Previews: PreviewProvider {
    static var previews: some View {
        ListsFormsContainersView()
    }
}
