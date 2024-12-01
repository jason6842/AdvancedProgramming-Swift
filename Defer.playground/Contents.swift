/*
 A defer statement executes specified statements before the code execution leaves the current
 block of code. The statements provided inside the defer block are executed at the end of a scope, like a function. They are executed every time before exiting the scope, even if an
 error is thrown.
 
 Note that the defer block is only executed when the current scope is left, which may not be
 the same as the return from the function.
 */

func example() {
    defer {
        print("This is the last message")
    }
    
    print("This is te first message")
}

example()

func printTheNumbers() { // Output: 4 3 2 1
    defer { print("1") }
    defer { print("2") }
    defer { print("3") }
    
    print("4")
}

printTheNumbers()

let file = open("file.txt")

do {
    let result = try readFile(file)
    file.close()
} catch {
    file.close()
}

let file2 = open("file.txt")

do {
    defer {
        file.close()
    }
    let result = try readFile(file2)

} catch {
    // Handle errors here
