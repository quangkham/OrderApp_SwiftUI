//
//  ViewwithGeometryReader.swift
//  OrderApp
//
//  Created by TechFun on 13/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ViewwithGeometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing : 0) { // no spacing for geometry
                Text("Left")
                    .frame(width: geometry.size.width / 2, height: geometry.size.height)
                    .background(Color.yellow)
                Text("Right")
                    .frame(width: geometry.size.width / 2, height: 50)
                    .background(Color.orange)
            }
        }
    }
}

struct ViewwithGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        ViewwithGeometryReader()
    }
}
