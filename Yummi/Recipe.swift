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
    
    #if DEBUG
    static let examples = [
        Recipe(name: "Fried egg", ingredients: [Ingredient(name: "Egg", quantity: 2.0, unit: "pcs", category: "Poultry", expDate: "7 Feb")], isFavourite: false, rating: 8.3),
        Recipe(name: "Tea", ingredients: [Ingredient(name: "Tea leaves", quantity: 1.0, unit: "bag", category: "Hot drink", expDate: "1 Apr"), Ingredient(name: "Hot water", quantity: 500.0, unit: "mL", category: "Beverage", expDate: "31 Dec")], isFavourite: false, rating: 6.7)
    ]
    #endif
    
    init(name: String, ingredients: [Ingredient], isFavourite: Bool, rating: Double) {
        self.name = name
        self.ingredients = ingredients
        self.isFavourite = isFavourite
        self.rating = rating
    }
    
    func displayIngredients() -> String {
        var toOutput = String()
        
        var index = 1
        for ingredient in self.ingredients {
            toOutput += "\(index). \(ingredient.display()) \n \n"
            index += 1
        }

        return toOutput
        
    }

    func display() -> [String] {
        var first = String()
        var toPad = String()
        var last = String()
        
        first += "Name: \(self.name) \n \n"
        first += "Ingredients: \n"
        
        toPad += self.displayIngredients()
        
        if self.isFavourite {
            last += "Favourite: Yes \n \n"
        } else if !self.isFavourite {
            last += "Favourite: No \n \n"
        }
        
        last += "Rating: \(self.rating)/10"
        
        return [first, toPad, last]
    }
    
}
