//
//  FoodCornerView.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI
import Foundation


struct FoodCornerView: View {
    let rows = Row.all()
    
    var body: some View {
        ScrollView {
            ForEach(rows) { row in
                HStack(alignment : .center) {
                    ForEach(row.cells) { cell in
                        Image(cell.imageURL)
                            .resizable()
                            .scaledToFit()
                        
                    }
                }
                
            }
        }.padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
    }
}

struct FoodCornerView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCornerView()
    }
}


struct Row : Identifiable {
    let id = UUID()
    let cells : [Cell]
}

struct Cell : Identifiable {
    let id = UUID()
    let imageURL : String
}

extension Row {
    static func all() -> [Row]{
        return [
            
            Row(cells: [Cell(imageURL: "all-out-donuts-thumb") , Cell(imageURL: "macarons-galore-thumb"),Cell(imageURL: "all-out-donuts-thumb")]),
            Row(cells: [Cell(imageURL: "cheese-toastie-thumb") , Cell(imageURL: "chrysanthemum-tea-thumb"),Cell(imageURL: "cheese-toastie-thumb")]),
            Row(cells: [Cell(imageURL: "maple-french-toast-thumb") , Cell(imageURL: "pepperoni-pizza-thumb"),Cell(imageURL: "maple-french-toast-thumb")]),
            Row(cells: [Cell(imageURL: "chrysanthemum-tea-thumb") , Cell(imageURL: "mexican-mocha-thumb"),Cell(imageURL: "chrysanthemum-tea-thumb")]),
            
            Row(cells: [Cell(imageURL: "power-muesli-thumb") , Cell(imageURL: "porridge-deluxe-thumb"),Cell(imageURL: "power-muesli-thumb")]),
            Row(cells: [Cell(imageURL: "pesto-farfalle-thumb") , Cell(imageURL: "powerhouse-coffee-thumb"),Cell(imageURL: "pesto-farfalle-thumb")]),
            Row(cells: [Cell(imageURL: "stack-o-pancakes-thumb") , Cell(imageURL: "straight-up-oj-thumb"),Cell(imageURL: "stack-o-pancakes-thumb")]),
            Row(cells: [Cell(imageURL: "strawberry-cooler-thumb") , Cell(imageURL: "strawberry-surprise-thumb"),Cell(imageURL: "strawberry-cooler-thumb")])
        ]
    }
}

extension Array {
    
    func chunked(into size:Int) -> [[Element]] {
        
        var chunkedArray = [[Element]]()
        
        for index in 0...self.count {
            if index % size == 0 && index != 0 {
                chunkedArray.append(Array(self[(index - size)..<index]))
            } else if(index == self.count) {
                chunkedArray.append(Array(self[index - 1..<index]))
            }
        }
        
        return chunkedArray
    }
}
