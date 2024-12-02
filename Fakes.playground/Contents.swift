import Foundation
import XCTest

protocol NetworkManager {
    func getMealsList() -> [String]
}

class menuManager {
    
    let networkManager : NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func allMeals() -> String {
        return networkManager.getMealsList().joined(separator: ", ")
    }
}

class FakeNetworkManager: NetworkManager {
    func getMealsList() -> [String] {
        return ["Soda", "Milkshake"]
    }
}

let menu = menuManager(networkManager: FakeNetworkManager())
let allMeals = menu.allMeals()
print(XCTAssertEqual(allMeals, "Soda, Milkshake"))
