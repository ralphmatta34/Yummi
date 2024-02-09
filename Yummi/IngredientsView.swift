//
//  IngredientsView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 09/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @State private var ingredients = [
        Ingredient(name: "Tomato", quantity: 5.0, unit: "kg", category: "Fruit", expDate: "2 Feb"),
        Ingredient(name: "Apple", quantity: 2.0, unit: "pcs", category: "Fruit", expDate: "3 Feb")
    ]
    @State private var index: Int = 0
    @State private var newName: String = ""
    @State private var newQuantity: Double = Double()
    @State private var newUnit: String = ""
    @State private var newCategory: String = ""
    @State private var newExpDate: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Current Ingredient")) {
                    Text("\(ingredients[index].display())")
                        .padding()
                    
                    Button("Next Ingredient", action: {
                        if index != ingredients.count-1 {
                            index += 1
                        } else {
                            index = 0
                        }
                    })
                }

                Section(header: Text("Add New Ingredient")) {
                    TextField("Enter the name", text: $newName)
                    HStack {
                        Text("\(String(format: "%.1f", newQuantity))")
                        Slider(value: $newQuantity, in: 0...100)
                    }
                    TextField(text: $newUnit, prompt: Text("Enter the unit")) {
                        Text("Unit")
                    }
                    TextField(text: $newCategory, prompt: Text("Enter the category")) {
                        Text("Category")
                    }
                    TextField(text: $newExpDate, prompt: Text("Enter the expiry date")) {
                        Text("Expiry Date")
                    }
                    Button(action: {
                        ingredients.append(Ingredient(name: newName, quantity: Double(newQuantity), unit: newUnit, category: newCategory, expDate: newExpDate))
                    }, label: {
                        Text("Add")
                    })
                }
            }
        }
        .navigationTitle("title")
    }
}

#Preview {
    IngredientsView()
}
