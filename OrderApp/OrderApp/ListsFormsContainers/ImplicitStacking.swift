//
//  ImplicitStacking.swift
//  OrderApp
//
//  Created by TechFun on 18/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ImplicitStacking: View {
    let users = [User() , User() , User()]
    var body: some View {
        List {
            ForEach(users){ user in
                Image("strawberry-cooler-thumb")
                .resizable()
                .frame(width : 40 , height : 40)
                Text(user.username)
            }
        }
    }
}

struct ImplicitStacking_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitStacking()
    }
}


struct User : Identifiable {
    var id = UUID()
    var username = "Anonymous"
}
