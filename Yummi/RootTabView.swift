//
//  RootTabView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 07/03/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            IngredientsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Add Ingredient")
                }
            RecipesView(recipes: Recipe.examples)
                .tabItem {
                    Image(systemName: "carrot")
                    Text("Recipes")
                }
        }
    }
}

#Preview {
    RootTabView()
}
