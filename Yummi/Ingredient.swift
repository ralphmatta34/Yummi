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
    var category: category
    var expDate: String
    
    func display() -> String {
        return "\((self.quantity*10.0).rounded()/10.0) \(self.unit) of \(self.name)"
    }

}

enum category: String, CaseIterable {
    case dairy, grain, fruit, legume, vegetable, redMeat, whiteMeat
}
