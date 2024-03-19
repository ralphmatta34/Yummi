//
//  IngredientsView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 09/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @State private var ingredients: [Ingredient] = [
        Ingredient(name: "Tomato", quantity: 5.0, unit: "kg", category: .fruit, expDate: "2 Feb"),
        Ingredient(name: "Apple", quantity: 2.0, unit: "pcs", category: .fruit, expDate: "3 Feb")
    ]
    
    @State private var index: Int = 0
    @State private var newName: String = ""
    @State private var newQuantity: Double = Double()
    @State private var newUnit: String = ""
    @State private var newCategory: category = .fruit
    @State private var newExpDate: String = ""
    @State private var sheetPresented: Bool = false

    var body: some View {
        NavigationStack {
            Form {
                
                // DISPLAY INGREDIENT
                
                ForEach(category.allCases, id: \.self) { eachCategory in
                    Section(header: Text(eachCategory.rawValue)) {
                        //TODO: find all ingredients with each category and display them
                    }
                }

                
//                Section(header: Text("All Ingredients")) {
//                    ForEach(ingredients, id: \.name) { ingredient in
//                        Text("\(ingredient.display())")
//                    }
//                    .onDelete(perform: { indexSet in
//                        ingredients.remove(atOffsets: indexSet)
//                    })
//                }
                
                // ADD INGREDIENT
                
                Button("Add Ingredient") {
                    sheetPresented.toggle()
                }
                .sheet(isPresented: $sheetPresented) {
                    TextField("Enter the name", text: $newName)
                        .padding()
                    HStack {
                        Text("\(String(format: "%.1f", newQuantity))")
                        Slider(value: $newQuantity, in: 0...100)
                    }
                    .padding()
                    TextField(text: $newUnit, prompt: Text("Enter the unit")) {
                        Text("Unit")
                    }
                    .padding()
                    TextField(text: $newCategory, prompt: Text("Enter the category")) {
                        Text("Category")
                    }
                    .padding()
                    TextField(text: $newExpDate, prompt: Text("Enter the expiry date")) {
                        Text("Expiry Date")
                    }
                    .padding()
                    Button(action: {
                        ingredients.append(Ingredient(name: newName, quantity: Double(newQuantity), unit: newUnit, category: newCategory, expDate: newExpDate))
                        newName = String()
                        newUnit = String()
                        newCategory = String()
                        newExpDate = String()
                        newQuantity = Double()
                    }, label: {
                        Text("Add")
                    })
                }
            }
            .navigationTitle("Ingredients")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    IngredientsView()
}
