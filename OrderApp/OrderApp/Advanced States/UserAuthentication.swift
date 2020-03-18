//
//  UserAuthentication.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI
import Combine

class UserAuthentication : ObservableObject {
    
    let objectWillChange = ObservableObjectPublisher()
    var username = "" {
        willSet {
            objectWillChange.send()
        }
    }
}
