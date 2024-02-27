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
    
    var body: some View {
        NavigationStack {
            List(recipes) { recipe in
                NavigationLink(recipe.name) {
                    SpecificRecipeView(recipe: recipe)
                }
            }
            .navigationTitle("Recipes")
            .navigationBarTitleDisplayMode(.large)
        }
        
        
        
        
        
        
        
        
//        List {
//            Section(content: {
//                ForEach(recipes, id:\.id) { recipe in
//                    NavigationLink(destination: IngredientsView(), label: { Text("\(recipe.name)")
//                    })
//                }
//            })
//        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.examples)
}
