enum Ingredients: String {
    case tomato = "tomatoes"
    case lettuce = "romaine lettuce"
    case olive = "olives"
    case pepper = "roasted sweet pepper"
    case garlic = "garlic"
    case seasoning = "Italian seasoning"
    case oil = "olive oil"
}

let ingredient = Ingredients.lettuce
switch ingredient {
case .tomato: print("We use \(ingredient.rawValue) that has the richest flavor from all the tomatoes.")
case .lettuce: print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
case .olive: print("We have the freshest \(ingredient.rawValue) in the market.")
default: print("Not an ingredient.")
}

enum RecipeInformation {
    case allergens(information: String)
}

var recipeInformation = RecipeInformation.allergens(information: "Peanuts, MIlk, Gluten")


switch recipeInformation {
case .allergens(let information):
    if information != "" {
        print("Be careful of this ingredient \(information).")
    } else {
        print("There are no allergens.")
    }
}


enum ContactAction: String {
    case call = "Call Contact"
    case message = "Send Message"
    case email = "Send Email"
    
    // Associated values can be added in an initializer or a computed property
    func performAction(with contactName: String) -> String {
        switch self {
        case .call:
            return "Calling \(contactName)..."
        case .message:
            return "Messaging \(contactName)..."
        case .email:
            return "Emailing \(contactName)..."
        }
    }
}

let action = ContactAction.call
print(action.rawValue) // Outputs: "Call Contact"

let actionMessage = action.performAction(with: "Alice")
print(actionMessage) // Outputs: "Calling Alice..."

print(ContactAction.email.performAction(with: "Bob")) // Outputs: "Emailing Bob...
