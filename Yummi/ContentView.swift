//
//  ContentView.swift
//  Yummi
//
//  Created by Matta, Ralph (PEPW) on 23/01/2024.
//

import Foundation
import SwiftUI

struct ContentView: View {

    @State private var ingredients = [Ingredient(name: "Tomato", quantity: 5.0, unit: "kg", category: "Fruit", expDate: "2 Feb"),
                                      Ingredient(name: "Apple", quantity: 2.0, unit: "pcs", category: "Fruit", expDate: "3 Feb")]
    @State private var index: Int = 0
    @State private var newName: String = ""
    @State private var newQuantity: Int = 0
    @State private var newUnit: String = ""
    @State private var newCategory: String = ""
    @State private var newExpDate: String = ""
    
    var body: some View {
        VStack {
            
            Text("\(ingredients[index].display())")
            .padding()
            
            Button("Next Ingredient", action: {
                if index != ingredients.count-1 {
                    index += 1
                } else {
                    index = 0
                }
            })
            
            Form {
                TextField(text: $newName, prompt: Text("Enter the name")) {
                    Text("Name")
                }
                Slider(
                       value: $newQuantity,
                       in: 0...100,
                       step: 0.5
                )
                Text("\(newQuantity)")
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
                    ingredients.append(Ingredient(name: newName, quantity: newQuantity, unit: newUnit, category: newCategory, expDate: newExpDate))
                }, label: {
                    Text("Add")
                })
            }
        }
    }
}


#Preview {
    ContentView()
}
