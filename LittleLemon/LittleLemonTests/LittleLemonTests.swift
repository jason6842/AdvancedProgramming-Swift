//
//  LittleLemonTests.swift
//  LittleLemonTests
//
//  Created by Jason Ma on 12/2/24.
//

import XCTest
@testable import LittleLemon

final class LittleLemonTests: XCTestCase {
    func test_recipeOrderCount_init_orderCountEqualsZero() {
        let recipe = Recipe()
        XCTAssert(recipe.orderCount == 0)
    }
    func test_recipeOrderCount_incrementOrderCount_orderCountEqualsOne() {
        var recipe = Recipe()
        recipe.incrementOrderCount()
        XCTAssert(recipe.orderCount == 1)
    }
    
    func test_calculateTotal_salesTaxTwentyPercent() {
        let items = [ CheckoutItem(name: "Fish", price: 625), CheckoutItem(name: "Chips", price: 420), CheckoutItem(name: "Soda", price: 250),
                      CheckoutItem(name: "Sundae", price: 450)]
        let taxPercentage = 20
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 2094)
    }
}

