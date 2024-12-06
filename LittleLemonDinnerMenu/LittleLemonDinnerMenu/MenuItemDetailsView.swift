//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Jason Ma on 12/2/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    Image("Little Lemon logo")
                        .resizable()
                        .frame(width: 320, height: 500)
//                    Spacer()
                    Group {
                        Text("Price: $\(String(format: "%.2f", item.price))")
                        Text("Ordered: \(item.ordered)")
                        Text("Ingredients: ")
                        ForEach(item.ingredients, id: \.self) { ingredient in Text(ingredient)}
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .navigationTitle(item.name)

            }
        }
    }
}

#Preview {
    MenuItemDetailsView(item: foodMenuItems[0])
}
