/*
 A mock is like a fake in a way that the real object is replaced with a simplified version of the
 complex code. But the difference between a fake and a mock is that a mock also tracks how many times a method is called and what parameters were used while calling the method.
 
 Why use mocks?
 A mock can verify that a particular function of the mocked object has been called with the
 correct parameters.
 */
import Foundation
import XCTest

protocol NetworkManager {
    func createNewsletterSubscription(email: String)
}

class NewsletterManager {
    let networkManager: NetworkManager
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func subscribe(email: String) {
        networkManager.createNewsletterSubscription(email: email)
    }
}

class MockNetworkManager: NetworkManager {
    var howManyTimesFunctionWasCalled = 0
    var emailTheFunctionReceived = ""
    
    func createNewsletterSubscription(email: String) {
        howManyTimesFunctionWasCalled += 1
        emailTheFunctionReceived = email
    }
}

let mockNetworkManager = MockNetworkManager()
let newsLetter = NewsletterManager(networkManager: mockNetworkManager)
let email = "example@email.com"
newsLetter.subscribe(email: email)
print(XCTAssertEqual(mockNetworkManager.howManyTimesFunctionWasCalled, 1))
print(XCTAssertEqual(mockNetworkManager.emailTheFunctionReceived, email))
