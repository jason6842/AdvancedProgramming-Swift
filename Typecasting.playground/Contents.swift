class Customer {
}

class PeanutAllergyCustomer: Customer {
    let dishesToAvoid = [
        "Dish7",
        "Dish8"
    ]
    func executeEmergencyProcedure() {
        print("Call 911")
    }
}

var customers: [Customer] = []
for _ in 0 ..< 5 {
    let randomNumber = Int.random(in: 0...1)
    let customer: Customer
    if randomNumber == 0 {
        customer = Customer()
    } else {
        customer = PeanutAllergyCustomer()
    }
    customers.append(customer)
}


for customer in customers {
    if customer is PeanutAllergyCustomer {
        print("Welcome. Do note that some food has peanuts.")
    } else {
        print("Welcome.")
    }
    if let peanutAllergyCustomer = customer as? // attempts to cast customer as a PeanutAllergyCustomer
        PeanutAllergyCustomer {
        print("Dishes to avoid:")
        print(peanutAllergyCustomer.dishesToAvoid)
        print("Emergency Procedure:")
        peanutAllergyCustomer.executeEmergencyProcedure()
    }
}
