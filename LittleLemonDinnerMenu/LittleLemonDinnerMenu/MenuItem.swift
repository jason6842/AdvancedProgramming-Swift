//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Jason Ma on 12/2/24.
//

import Foundation

struct MenuItem {
    let name: String
    let price: Double
    let description: String
    let ordered: Int
    let ingredients: [String]
}

// Food Menu Items
let foodMenuItems = [
    MenuItem(name: "Pizza", price: 20.0, description: "Delicious cheesy pizza.", ordered: 5, ingredients: ["Cheese", "Tomato Sauce", "Dough"]),
    MenuItem(name: "Burger", price: 12.0, description: "Juicy grilled burger.", ordered: 3, ingredients: ["Beef Patty", "Lettuce", "Cheese", "Bun"]),
    MenuItem(name: "Pasta", price: 16.0, description: "Creamy Alfredo pasta.", ordered: 7, ingredients: ["Pasta", "Alfredo Sauce", "Parmesan"]),
    MenuItem(name: "Steak", price: 30.0, description: "Juicy grilled steak.", ordered: 6, ingredients: ["Beef", "Salt", "Pepper"]),
    MenuItem(name: "Salad", price: 10.0, description: "Fresh garden salad.", ordered: 8, ingredients: ["Lettuce", "Tomatoes", "Cucumber"]),
    MenuItem(name: "Tacos", price: 14.0, description: "Spicy beef tacos.", ordered: 14, ingredients: ["Tortilla", "Beef", "Cheese", "Salsa"]),
    MenuItem(name: "Fries", price: 5.0, description: "Crispy golden fries.", ordered: 15, ingredients: ["Potatoes", "Salt", "Oil"]),
    MenuItem(name: "Sushi", price: 25.0, description: "Fresh sushi platter.", ordered: 12, ingredients: ["Rice", "Fish", "Seaweed"]),
]

// Drink Menu Items
let drinkMenuItems = [
    MenuItem(name: "Coke", price: 2.0, description: "Chilled soft drink.", ordered: 20, ingredients: ["Carbonated Water", "Sugar", "Caramel Color", "Caffeine"]),
    MenuItem(name: "Juice", price: 3.5, description: "Freshly squeezed juice.", ordered: 15, ingredients: ["Fruit", "Water", "Sugar"]),
    MenuItem(name: "Coffee", price: 4.0, description: "Hot brewed coffee.", ordered: 12, ingredients: ["Coffee Beans", "Water"]),
    MenuItem(name: "Tea", price: 3.0, description: "Soothing hot tea.", ordered: 10, ingredients: ["Tea Leaves", "Water"]),
    MenuItem(name: "Milkshake", price: 6.0, description: "Creamy chocolate milkshake.", ordered: 8, ingredients: ["Milk", "Chocolate Syrup", "Sugar"]),
    MenuItem(name: "Smoothie", price: 7.0, description: "Healthy fruit smoothie.", ordered: 9, ingredients: ["Banana", "Berries", "Yogurt"]),
    MenuItem(name: "Lemonade", price: 3.5, description: "Refreshing lemonade.", ordered: 18, ingredients: ["Lemon", "Water", "Sugar"]),
    MenuItem(name: "Mocktail", price: 8.0, description: "Fruity non-alcoholic drink.", ordered: 5, ingredients: ["Fruit Juice", "Soda", "Mint"]),
]

// Dessert Menu Items
let dessertMenuItems = [
    MenuItem(name: "Ice Cream", price: 4.50, description: "Refreshing vanilla ice cream.", ordered: 10, ingredients: ["Milk", "Sugar", "Vanilla Extract"]),
    MenuItem(name: "Cake", price: 6.0, description: "Rich chocolate cake.", ordered: 8, ingredients: ["Flour", "Cocoa", "Sugar", "Eggs"]),
    MenuItem(name: "Pie", price: 5.5, description: "Classic apple pie.", ordered: 6, ingredients: ["Apples", "Flour", "Sugar", "Cinnamon"]),
    MenuItem(name: "Brownie", price: 4.0, description: "Gooey chocolate brownie.", ordered: 9, ingredients: ["Cocoa", "Flour", "Sugar", "Butter"]),
    MenuItem(name: "Pudding", price: 3.0, description: "Creamy vanilla pudding.", ordered: 7, ingredients: ["Milk", "Sugar", "Cornstarch"]),
    MenuItem(name: "Donut", price: 2.5, description: "Freshly baked donut.", ordered: 11, ingredients: ["Flour", "Sugar", "Yeast"]),
    MenuItem(name: "Cheesecake", price: 7.0, description: "Creamy New York cheesecake.", ordered: 8, ingredients: ["Cream Cheese", "Sugar", "Graham Crackers"]),
    MenuItem(name: "Macaron", price: 1.5, description: "Delicate French macaron.", ordered: 20, ingredients: ["Almond Flour", "Sugar", "Egg Whites"]),
]
