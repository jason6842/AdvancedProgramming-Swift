/*
 try! and try? expresions
 
 The try! expression lets you call a throwable function outside of the do-catch statement. It
 disables the error handling and should be used in situations where you know that the particular
 throwable function, will not, in fact, throw errors. If an error is thrown, the application
 will crash. Using the try! expression in the production is not advisible.
 
 The try? expression also lets you call the throwable function outside of the do-catch statement.
 The expression lets you write concise error-handling code when you to handle all the errors in
 the same way.
 
 The try? expression makes the result of the function call an optional value. The result will
 either be the result of the functin call, or, if an error was thrown - it will be converted
 to a nil result value.
 */

// When to use try!
// 1. Loading a file from a disk that is guaranteed to be there and you know will never fail.
// 2. Writing unit test to simplify code

// When to use try?
// 1. The error thrown is not important, all errors are handled this way.

// Same approach to use try!
/*
do {
    let image = try loadImageThrowableFunction("image.png")
} catch{}
let image = try! loadImageThrowableFunction("image.png")
*/

// Same approach to use try?
/*
 do {
    let image = try loadImageThrowableFunction("image.png")
 } catch {}
 
 // Either the image or returns nil or not found
 let image = try? loadImageThrowableFunction("image.png")
 */

class Calculator {
    func divide (x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
}

enum CalculatorError: Error {
    case divisionByZero
}

let calculator = Calculator()
do {
    let successfulResult = try calculator.divide(x: 10, y: 2)
    print(successfulResult)
    let invalidResult = try calculator.divide(x: 10, y: 0)
    print(invalidResult)
} catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
}
