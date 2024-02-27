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
        NavigationStack {
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
    SpecificRecipeView(recipe: Recipe(name: "Fried egg", ingredients: [Ingredient(name: "Egg", quantity: 2.0, unit: "pcs", category: "Poultry", expDate: "7 Feb")], isFavourite: false, rating: 8.3))
}
