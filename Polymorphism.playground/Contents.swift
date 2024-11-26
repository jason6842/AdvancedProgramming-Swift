class Spaghetti {
    var ingredients: Set<String> = [
        "pasta",
        "tomato sauce"
    ]
    func fetchIngredients() {
        print("Ingredients: \(ingredients)")
    }
}

final class SpaghettiMeatball: Spaghetti {
    override func fetchIngredients() {
        print("Before")
        super.fetchIngredients()
        print("After")
        print("Special spaghetti meatball ingredients")
    }
}
let spaghetti = Spaghetti()
let spaghettiMeatball = SpaghettiMeatball()
spaghetti.fetchIngredients()
spaghettiMeatball.fetchIngredients()
