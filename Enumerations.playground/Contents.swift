// Enums with raw values
// Must declare the type of the raw values if using raw values
enum PastaTypes: Int {
    case spaghetti = 8
    case penne = 10
    case ravioloi = 11
    case rigatoni = 12
}

let cookingTime = PastaTypes.spaghetti.rawValue
print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")


// Function with enum as an argument
func cookingPerfectPasta(pasta: PastaTypes) {
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}

cookingPerfectPasta(pasta: .rigatoni)

// CaseIterable Protocol with enumeration
enum PastaTypesA: CaseIterable {
    case spaghetti, penne, ravioloi, rigatoni
}

let totalCaseCount = PastaTypesA.allCases.count
print(totalCaseCount)

// Enums with associated values
// Able to pass additional information to an enum
// Must specify the data type for the parameter
enum PastaTypesB {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioloi(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

var checkIfCooked = PastaTypesB.spaghetti(cookingTime: 8)
if cookingTime < 8 {
    print("Spaghetti is still not fully cooked...")
} else {
    print("Spaghetti is cooked, take it out of the water!")
}

// Using enum inside a function
func checkIfCooked(for pasta: PastaTypesB) {
    switch pasta {
    case .spaghetti(let cookingTime):
        if cookingTime < 8 {
            print("Spaghetti is still not fully cooked...")
        } else {
            print("Spaghetti is cooked, take it out of the water!")
        }
    default: return
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))

// where statements
// where the condition statement is true
func checkIfCooked2(for pasta: PastaTypesB) {
    switch pasta {
    case .spaghetti(let cookingTime) where cookingTime >= 8:
        print("Spaghetti is cooked, take it out of the water!")
    default: print("Pasta is not cooked.")
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 7))
