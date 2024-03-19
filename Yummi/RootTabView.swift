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
                    Image(systemName: "carrot")
                    Text("Ingredients")
                }
            RecipesView(recipes: Recipe.examples)
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Recipes")
                }
        }
    }
}

#Preview {
    RootTabView()
}
