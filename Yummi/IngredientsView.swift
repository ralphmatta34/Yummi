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
    @State private var addNewIngredient: Bool = true
    @State private var showAllIngredients: Bool = true

    var body: some View {
        VStack {
            Toggle("Show All Ingredients", isOn: $showAllIngredients)
                .padding()
            Toggle("Add New Ingredient", isOn: $addNewIngredient)
                .padding()
            Form {
                if showAllIngredients {
                    Section(header: Text("All Ingredients")) {
                        ForEach(ingredients, id: \.name) { ingredient in
                            Text("\(ingredient.display())")
                        }
                        .onDelete(perform: { indexSet in
                            ingredients.remove(atOffsets: indexSet)
                        })
                    }
                }
                if addNewIngredient {
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
        }
        .navigationTitle("Ingredients")
    }
}

#Preview {
    IngredientsView()
}
