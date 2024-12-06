//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Jason Ma on 12/2/24.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                // Food
                VStack(alignment: .leading) {
                    Text("Food")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    let gridItems = [GridItem(.adaptive(minimum: 100))]
                          LazyVGrid(columns: gridItems, spacing: 16) {
                              // Iterate through range of numbers
                              ForEach(foodMenuItems, id: \.name) { item in
                                  buildNavigationLink(for: item)
                              }
                          }
                          
                          .padding()
                }
                // Drinks
                VStack(alignment: .leading) {
                    Text("Drinks")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    let gridItems = [GridItem(.adaptive(minimum: 100))]
                          LazyVGrid(columns: gridItems, spacing: 16) {
                              // Iterate through range of numbers
                              ForEach(drinkMenuItems, id: \.name) { item in
                                  buildNavigationLink(for: item)
                              }
                          }
                          
                          .padding()
                }
                // Dessert
                VStack(alignment: .leading) {
                    Text("Dessert")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    let gridItems = [GridItem(.adaptive(minimum: 100))]
                          LazyVGrid(columns: gridItems, spacing: 16) {
                              // Iterate through range of numbers
                              ForEach(dessertMenuItems, id: \.name) { item in
                                  buildNavigationLink(for: item)
                              }
                          }
                          
                          .padding()
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(destination: MenuItemsOptionView()) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
        }
    }
}

private func buildNavigationLink(for item: MenuItem) -> some View {
        NavigationLink(destination: MenuItemDetailsView(item: item)) {
            VStack {
                Image("black")
                    .resizable()
                    .frame(width: 100, height: 70)
                Text(item.name) // Add label for the food item
//                    .font(.caption)
                    .foregroundColor(Color.black)
            }
            .padding()
        }
    }

#Preview {
    MenuItemsView()
}
