//
//  Timer.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    @State var currentDate = Date()
    @State var timeRemaining = 10
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            Text("\(currentDate)")
                       .onReceive(timer) { input in
                           self.currentDate = input
                   }
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    if self.timeRemaining > 0 {
                        self.timeRemaining -= 1
                    }
            }
        }.padding()
       
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
