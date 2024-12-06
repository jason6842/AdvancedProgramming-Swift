//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Jason Ma on 12/2/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    enum Category: String, CaseIterable {
        case food = "Food"
        case drink = "Drink"
        case desert = "Desert"
    }
    enum SortBy: String, CaseIterable {
        case mostPopular = "Most Popular"
        case price = "Price $-$$$"
        case alphabetical = "A-Z"
    }
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                List {
                    Section(header: Text("SELECTED CATEGORES")){
                        ForEach(Category.allCases, id: \.self) { category in Text(category.rawValue)
                        }
                    }
                    Section(header: Text("SORT BY")) {
                        ForEach(SortBy.allCases, id: \.self) {
                            element in Text(element.rawValue)
                        }
                    }
                    
                    
                }
            }
            .navigationTitle("Filter")
        }
    }
}

#Preview {
    MenuItemsOptionView()
}
