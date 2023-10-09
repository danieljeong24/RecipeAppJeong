//
//  CategoriesView.swift
//  RecipeAppJeong
//
//  Created by Daniel Jeong on 10/8/23.
//

import SwiftUI

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink(
                        destination: CategoryView(category: category),
                        label: {
                            Text(category.rawValue + "s")
                        }
                    )
                }
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
