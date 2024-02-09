//
//  ContentView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 23/01/2024.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    @State var recipesView: Bool = false
    
    var body: some View {
        VStack {
            Toggle("Display recipes view", isOn: $recipesView)
                .padding()
            
            if recipesView {
                RecipesView(recipes: Recipe.examples)
            } else {
                IngredientsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
