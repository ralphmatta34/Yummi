//
//  RecipesView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 06/02/2024.
//

import Foundation
import SwiftUI

struct RecipesView: View {
    
    @State var recipes: [Recipe]
    @State private var searchText: String = String()
    
    var body: some View {
        NavigationStack {
            if searchResults.count == 0 {
                Text("No Results Found")
            }
            List {
                ForEach(searchResults) { recipe in
                    NavigationLink(recipe.name) {
                        SpecificRecipeView(recipe: recipe)
                    }
                }
            }
            .navigationTitle("Recipes")
            .navigationBarTitleDisplayMode(.large)
        }
        .searchable(text: $searchText)
    }
    
    var searchResults: [Recipe] {
        if searchText.isEmpty {
            return recipes
        } else {
            return recipes.filter { $0.name.contains(searchText)}
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.examples)
}
