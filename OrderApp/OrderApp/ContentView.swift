//
//  ContentView.swift
//  OrderApp
//
//  Created by TechFun on 11/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI


struct ContentView: View{
    
    var body : some View{
        
        NavigationView{
            VStack(alignment : .leading , spacing : 16) {
                NavigationLink(destination : ViewLayout()){
                    Text("View Layout")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(10)
                
                NavigationLink(destination : WorkingwithState()){
                    Text("Working with State")
                    
                }.frame(height : 50)
                .background(Color.black)
                .cornerRadius(10)
                
                NavigationLink(destination : CustomBindingsView()){
                    Text("Working with advanced state")
                }
                .frame(height : 50)
                .background(Color.purple)
                .cornerRadius(5)
                
                NavigationLink(destination : ListsFormsContainersView()){
                    Text("Lists,Forms and Containers")
                }
                .frame(height : 50)
                .background(Color.orange)
                .cornerRadius(5)
                
                NavigationLink(destination : FoodCornerView()){
                    Text("Food Corner Grid")
                }
                .frame(height : 50)
                .background(Color.red)
                .cornerRadius(8)
            }
                
            .padding(.top)
            .navigationBarTitle("All" , displayMode:  .inline)
        }
    }
  
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
