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
        List {
            Section(content: {
                ForEach(recipes, id:\.id) { recipe in
                    Text("\(recipe.name)")
                }
            })
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.examples)
}
