//
//  NavigationLinkView.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct NavigationLinkView: View {
       @State private var name : String = ""
    @State private var password : String = ""
    
    var body: some View {
     
        Group{
            VStack {
                TextField("Enter your name" , text : $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .disableAutocorrection(true)
                
                SecureField("Enter a password" , text : $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Text("Hello ,Welcome \(name)")
                Text("You entered : \(password)")
                
            }
            NavigationView{
                        NavigationLink(destination: Text("Details more here")){
                              Image("fillet-steak")
                                .renderingMode(.original)
                        }
                          .buttonStyle(PlainButtonStyle())
                }
            }
        }
        
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
