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
    
}

