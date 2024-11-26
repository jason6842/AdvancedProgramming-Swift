class Vegetable {
//    let primaryColor = "Green"
    var primaryColor: String {
        "Green"
    }
    func sing() {
        print("I'm an awesome vegetable.")
    }
}

class Spinach: Vegetable{}

class Broccoli: Vegetable{}

class Carrot: Vegetable{
    override var primaryColor: String {
            "Orange"
    }
}
    

let spinach = Spinach()
let brocolli = Broccoli()
let carrot = Carrot()

print(spinach.primaryColor)
print(brocolli.primaryColor)
print(carrot.primaryColor)

spinach.sing()
brocolli.sing()
carrot.sing()

