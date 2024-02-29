//
//  SpecificRecipeView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 27/02/2024.
//

import SwiftUI

struct SpecificRecipeView: View {
    var recipe: Recipe
    var name: String {
        recipe.name
    }
    var rating: Double {
        recipe.rating
    }
//    var ratingString: String {
//        let s = String(rating)
//        return String(s.prefix(3))
//    }
    var numStars: Int {
        Int((rating/2.0).rounded())
    }
    var stars: String {
        var string = ""
        for _ in 0..<numStars {
            string += "★"
        }
        return string
    }
    var ingredients: [Ingredient] {
        recipe.ingredients
    }
    var body: some View {
        VStack {
            Text("Rating")
                .bold()
            Text("\(stars)")
            Divider()
            
            Text("Ingredients")
                .bold()
            ForEach(ingredients, id:\.name) { ingredient in
                Text("\(ingredient.display())")
            }
            Divider()
            
                .navigationTitle(name)
                .navigationBarTitleDisplayMode(.large)
        }
        
    }
}

#Preview {
    SpecificRecipeView(recipe: Recipe(name: "Pizza", ingredients: [Ingredient(name: "Dough", quantity: 2.0, unit: "kg", category: "Baked", expDate: "8 Feb"), Ingredient(name: "Tomato", quantity: 5.0, unit: "kg", category: "Fruit", expDate: "2 Feb"), Ingredient(name: "Cheese", quantity: 3.0, unit: "kg", category: "Dairy", expDate: "7 Feb")], isFavourite: true, rating: 9.6))
}
