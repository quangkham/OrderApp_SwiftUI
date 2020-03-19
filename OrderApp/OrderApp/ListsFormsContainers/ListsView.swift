//
//  ListsView.swift
//  OrderApp
//
//  Created by TechFun on 17/03/2020.
//  Copyright © 2020 TechFunMyanmar. All rights reserved.
//

import SwiftUI

struct ListsView: View {
    var body: some View {
        let first = Restaurant(name: "Joey's Elista")
        let second = Restaurant(name: "Comma Games")
        let third = Restaurant(name: "Black Cayon")
        let fourht = Restaurant(name : "Yonganee")
        let restaurants = [first, second, third , fourht]
        
//        return List(restaurants) { restaurant in
//        RestaurantRow(restaurant: restaurant)
//        } //first way
        
        //return List(restaurants , rowContent: RestaurantRow.init)//second way to make shorter
        
        return NavigationView {
            List(restaurants) { restaurant in
                NavigationLink(destination: RestaurantView(restaurant: restaurant)){
                     RestaurantRow(restaurant: restaurant)
                }
            }.navigationBarTitle("Select a restaurant")
        }
    }
}

struct ListsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView()
    }
}


struct RestaurantRow : View{
    
    var restaurant : Restaurant
    var body : some View {
        Text("\(restaurant.name)")
    }
}

struct Restaurant : Identifiable {
    
    var id = UUID()
    var name : String
}

struct RestaurantView : View {
    var restaurant : Restaurant
    var body : some View {
        Text("Come and eat \(restaurant.name)")
            .font(.largeTitle)
    }
}
