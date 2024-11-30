protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set }
    func executePrimaryDuty()
}

struct Waitress: Employee {
    let name: String
    var daysWorking = 0
    func executePrimaryDuty() {
        print("\(name) brings delicious food to customers.")
    }
}

struct Cook: Employee {
    let name: String
    var daysWorking = 0
    func executePrimaryDuty() {
        print("\(name) cooks delicious food for customers.")
    }
}

var jennifer = Waitress(name: "Jennifer")

