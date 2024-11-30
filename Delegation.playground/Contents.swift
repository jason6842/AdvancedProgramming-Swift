protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set }
    func executePrimaryDuty()
}

struct Waitress: Employee {
    let name: String
    var daysWorking = 0
    var primaryDutyDelegate: Employee? // checks if an object of type Employee
    func executePrimaryDuty() {
        let name: String
        // if an Employee object exists, call the object instead
        if let primaryDutyDelegate = primaryDutyDelegate {
            name = primaryDutyDelegate.name
        } else {
            name = self.name
        }
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
let jane = Waitress(name: "Jane")
let mario = Cook(name: "Mario")

jennifer.primaryDutyDelegate = jane
jennifer.executePrimaryDuty()

