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
             Name: \(self.name)
             Quantity: \(self.quantity) units
             Category: \(self.category)
             Expiry date: \(self.expDate)
             """
    }

}
