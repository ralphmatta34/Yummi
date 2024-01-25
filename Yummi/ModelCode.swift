//
//  ModelCode.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 23/01/2024.
//

import Foundation

struct Ingredient {
    
    var name: String
    var quantity: Double
    var unit: String
    var category: String
    var expDate: String
    
    func display() -> String {
        return """
             Name: \(name)
             Quantity: \(quantity) units
             Category: \(category)
             Expiry date: \(expDate)
             """
    }

}
