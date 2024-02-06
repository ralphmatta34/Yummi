//
//  RecipesView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 06/02/2024.
//

import Foundation
import SwiftUI

struct RecipesView: View {
    
    @State private var pizza = Recipe(name: "Pizza", ingredients: [Ingredient(name: "Dough", quantity: 2.0, unit: "kg", category: "Baked", expDate: "8 Feb"), Ingredient(name: "Tomato", quantity: 5.0, unit: "kg", category: "Fruit", expDate: "2 Feb"), Ingredient(name: "Cheese", quantity: 3.0, unit: "kg", category: "Dairy", expDate: "7 Feb")], isFavourite: true, rating: 9.6)
    
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            Section(content: {
                Text("\(pizza.display()[0])")
                Text("\(pizza.display()[1])")
                    .padding(.leading, 75)
                Text("\(pizza.display()[2])")
                
            })
        }
    }
}

#Preview {
    RecipesView(recipes, Recipe.examples)
}
