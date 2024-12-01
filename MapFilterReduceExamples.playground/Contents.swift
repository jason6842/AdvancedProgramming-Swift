struct User {
    let id: Int
    let name: String
}

let users = [
    User(id: 1, name: "John"),
    User(id: 2, name: "Tom")
]

let usersId = users.map { user in
    return user.id
}
print(usersId) // [1, 2]

import Foundation

// Compact map - is a special type of map that discards any nil values. It is very useful
// if an object conversion function could produce nil. In this case, however, you only
// want the non-nil values in the resulting array.
let urlsAsStrings = ["https://www.google.com", "not a valid url"]
let urlsOrNil = urlsAsStrings.map { URL(string: $0) }
let urls = urlsAsStrings.compactMap { URL(string: $0) }
print(urlsOrNil)
print(urls)

// Flat map - The mapping closure returns an array of elements rather than just a single element,
// and The final resulting array must be a one-dimensional array. This means that there must not
// be an array inside of an array

struct User1 {
    let id: Int
    let name: String
    let languages: [String]
}

let users1 = [
    User1(id: 1, name: "John", languages: ["English, German"]),
    User1(id: 2, name: "Tom", languages: ["Russian", "Spanish"])
]
let allLanguages = users1.flatMap { $0.languages }
print(allLanguages)


struct Order {
    let price: Int
    let location: String
}

func totalRevenueOf(orders: [Order], location: String) -> Int {
    let ordersAtLocation = orders.filter { $0.location == "New York" }
    print(ordersAtLocation)
    let orderPrices = ordersAtLocation.map { $0.price }
    print(orderPrices)
    return orderPrices.reduce(0) { $0 + $1}
}

let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]

let result = totalRevenueOf(orders: orders, location: "New York")
print(result)
