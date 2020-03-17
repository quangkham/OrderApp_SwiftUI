//
//  Stepper.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct StepperContentView: View {
    @State private var age = 18
    var body: some View {
        VStack {
            
            Stepper("Enter your age", onIncrement : {
                self.age += 1
                print("Adding to age")
            },onDecrement : {
                self.age -= 1
                print("Subtracting from age")
            })
                .padding()
            Text("Your age is \(age)")
        }
    }
}

struct StepperContentView_Previews: PreviewProvider {
    static var previews: some View {
        StepperContentView()
    }
}
