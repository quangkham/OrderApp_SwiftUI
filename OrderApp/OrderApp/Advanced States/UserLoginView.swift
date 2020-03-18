//
//  UserLoginView.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct UserLoginView: View {
    
    @EnvironmentObject var settings: UserSettings
    
    //@ObservedObject var settings = UserAuthentication()
    
    var body: some View {
//        VStack {
//            TextField("Username" , text : $settings.username)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//            Text ("Your username is :\(settings.username)")
//        }
        
        Text("Score: \(settings.score)")
    }
}

struct UserLoginView_Previews: PreviewProvider {
    
    static var previews: some View {
        UserLoginView()
    }
}
