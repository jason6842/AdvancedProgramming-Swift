class Dish {
    private let ingredients: [String]
    private let name: String
    
    init(ingredients: [String], name: String) {
        self.ingredients = ingredients
        self.name = name
    }
    
    func printInfo() {
        print("Name: \(name)")
        print("Ingredients: \(ingredients)")
    }
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
    override func printInfo() {
        print("Main Dish!")
        super.printInfo()
    }
}

for _ in 0..<5 {
    let randomNumber = Int.random(in: 0...1) // either 0 or 1
    let dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish(ingredients: ["Margherita", "Flatbread"], name: "Margherita Flatbread")
    } else {
        dish = MainDish(ingredients: ["Spaghetti", "Tomato sauce"], name: "Super Spaghetti")
    }
    
    if let appetizerDish = dish as?
        AppetizerDish {
        appetizerDish.printInfo()
    }
    
    if let mainDish = dish as?
        MainDish {
         mainDish.printInfo()
    }
}
