//
//  Recipe.swift
//  LittleLemon
//
//  Created by Jason Ma on 12/2/24.
//

import Foundation

struct Recipe {
    var orderCount = 0
    mutating func incrementOrderCount() {
        orderCount += 1
    }
}
