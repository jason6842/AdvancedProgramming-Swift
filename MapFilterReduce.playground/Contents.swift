let numbersArray = [1, 2, 3, 4, 5]

// Map
let numbersAsStrings = numbersArray.map { (aNumber) -> String in return String(aNumber) }
print(numbersAsStrings)

// Map - Shorthand argument names
let numbersAsStrings1 = numbersArray.map { String($0) }
print(numbersAsStrings1)

// Filter
let onlySmallNumbers = numbersArray.filter { (aNumber) -> Bool in return aNumber < 3 }
print(onlySmallNumbers)

// Filter - Shorthand argument names
let onlySmallNumbers1 = numbersArray.filter { $0 < 3 }
print(onlySmallNumbers1)

// Reduce
let sumOfAllNumbers = numbersArray.reduce(0) { (resultSoFar, currentNumber) -> Int in
        return resultSoFar + currentNumber
}
print(sumOfAllNumbers)

// Reduce - Shorthand argument names
let sumOfAllNumbers1 = numbersArray.reduce(0) { $0 + $1 }
print(sumOfAllNumbers1)

let finalListString = numbersAsStrings.reduce("") { $0 +  "," + $1 }
print(finalListString)
