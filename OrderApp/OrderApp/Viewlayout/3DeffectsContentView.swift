//
//  3DeffectsContentView.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct _DeffectsContentView: View {
    var body: some View {
        ScrollView(.horizontal , showsIndicators:  false) {
            HStack(spacing : 0) {
                ForEach(1..<10) { num in
                    VStack {
                        GeometryReader { geo in
                            Text("Number \(num)")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.red)
                                .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 8), axis: (x: 0, y: 1, z: 0))
                            
                        }
                    }
                    .frame(width : 180)
                    
                }
            }.padding()
        }
    }
}

struct _DeffectsContentView_Previews: PreviewProvider {
    static var previews: some View {
        _DeffectsContentView()
    }
}
