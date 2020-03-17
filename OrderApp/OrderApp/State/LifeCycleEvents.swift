//
//  LifeCycleEvents.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct LifeCycleEvents: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Hello World")
                }
            }
        }.onAppear{
            print("ContentView appeared")
        }.onDisappear(){
            print("ContentView disappeared")
        }
        
    }
}

struct LifeCycleEvents_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleEvents()
    }
}



struct DetailView : View {
    var body : some View {
        VStack {
            Text("Second View")
        }.onAppear() {
            print("DetailView appeared!")
        }.onDisappear() {
            print("DetailView disappeared!")
        }
    }
}
