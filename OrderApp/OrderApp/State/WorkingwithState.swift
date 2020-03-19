//
//  WorkingwithState.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct WorkingwithState: View {
    var body: some View {
        NavigationView{
            VStack(alignment : .leading ,spacing: 8){
                
                NavigationLink(destination: StateControlsView()){
                    Text("Control Toggle with @state")
                }
                .frame(height : 50)
                .background(Color.orange)
                
                NavigationLink(destination: NavigationLinkView()){
                    Text("Connect with Navigation Link ")
                }
                .frame(height : 50)
                .background(Color.yellow)
                
                NavigationLink(destination: SliderView()){
                    Text("Controls Slider")
                }
                .frame(height : 50)
                .background(Color.green)
                
                NavigationLink(destination: PickerView()){
                    Text("Controls PickerView")
                }
                .frame(height : 50)
                .background(Color.pink)
                
                NavigationLink(destination: SegmentedControls()){
                    Text("Segmented Controls")
                }
                .frame(height : 50)
                .background(Color.red)
                
                NavigationLink(destination: StepperContentView()){
                    Text("Stepper Controls")
                    }
                .frame(height : 50)
                .background(Color.gray)
                
                NavigationLink(destination: GestureViewContent()){
                    Text("Working with gesture")
                    }
                .frame(height : 50)
                .background(Color.black)
                
            }
            .navigationBarTitle("Working with State" , displayMode: .inline)

        }
    }
}


struct WorkingwithState_Previews: PreviewProvider {
    static var previews: some View {
        WorkingwithState()
    }
}
