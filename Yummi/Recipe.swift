//
//  Recipe.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 02/02/2024.
//

import Foundation

struct Recipe {
    
    var name: String
    var ingredients: [Ingredient]
    var isFavourite: Bool
    var rating: Double
    
    init(name: String, ingredients: [Ingredient], isFavourite: Bool, rating: Double)
}

//let recipe = Recipe(name: "Pizza", ingredients: ...)
