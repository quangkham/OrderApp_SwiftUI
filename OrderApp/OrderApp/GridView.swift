//
//  GridView.swift
//  OrderApp
//
//  Created by TechFun on 16/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            //Image(systemName: "\(row * 4 + col).circle")
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: 50, height: 50)
                .padding(.leading)
            Text("R\(row) C\(col)")
            

        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
