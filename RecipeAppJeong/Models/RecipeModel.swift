//
//  RecipeModel.swift
//  RecipeAppJeong
//
//  Created by Daniel Jeong on 10/8/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    //this property uniquely identify each case of the enum Category 
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
    
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(name:  "Kimchi Jigae",
               image: "https://www.beyondkimchee.com/wp-content/uploads/2022/04/Kimchi-Jjigae-thumbnail.jpg",
               description: "Kimchi stew is one of the most-loved of all the stews in Korean cuisine. It’s a warm, hearty, spicy, savory, delicious dish that pretty much everyone loves. As long as they can handle spicy food, I never met a person who didn’t like kimchi-jjigae.",
               ingredients: "1 pound kimchi, cut into bite size pieces\n1 1/4 cup kimchi brine\n1 ½ pound pork shoulder (or pork belly)\n1 ½ package of tofu (optional), sliced into ½ inch thick bite size pieces\n1 3 green onions \n1 1 medium onion, sliced (1 cup)",
               directions: "Place the kimchi and kimchi brine in a shallow pot. Add pork and onion\n1Chop 1 green onion and put it on the top of the stew. Remove from the heat and serve right away with rice.\n1Open and mix in the seasonings with a spoon. Lay the tofu over top." ,
               category: "Soup",
               datePublished: "2023-09-13",
               url: "https://www.maangchi.com/recipe/kimchi-jjigae"),
        Recipe(name:  "Bibimbap",
               image: "https://mykoreankitchen.com/wp-content/uploads/2013/07/1.Korean-mixed-rice-Bibimbap.jpg",
               description: "Bibimbap (비빔밥) is probably one of the most well-known and beloved Korean dishes to many people. Even if people don’t know anything about Korea, it’s not too difficult to find people who had bibimbap sometime in their lives",
               ingredients: "100g / 3.5 ounces beef mince (or other cuts)\n1 1 Tbsp soy sauce\n1 1 Tbsp sesame oil\n1 1 tsp brown sugar\n1 1/4 tsp minced garlic\n1 2 Tbsp gochujang 1 Tbsp sesame oil\n1 1 Tbsp sugar – I used raw sugar\n1 1 Tbsp water\n1 1 Tbsp roasted sesame seeds",
               directions: "Cook spinach and bean sprouts per linked recipe.\n1 Put the rice into a bowl and add the meat, assorted vegetables, seasoned seaweed, bibimbap sauce, and the egg on top of the rice. Serve." ,
               category: "Main",
               datePublished: "2023-10-13",
               url: "https://mykoreankitchen.com/bibimbap-korean-mixed-rice-with-meat-and-assorted-vegetables/")]
        
}

