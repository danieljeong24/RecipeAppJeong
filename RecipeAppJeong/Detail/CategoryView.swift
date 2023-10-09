//
//  CategoryView.swift
//  RecipeAppJeong
//
//  Created by Daniel Jeong on 10/9/23.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    //Computed property
    
    var recipes: [Recipe]{
        return Recipe.all.filter{ $0.category == category.rawValue }
    }
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

#Preview {
    CategoryView(category: Category.dessert)
}
