/*
 1. Define a base case, meaning when to stop.
 2. Perform certain steps to reach the base case.
 3. Repeat the process again with a smaller subset of the problem.
 */

//var n = 6
//while n > 0 {
//    print(n)
//    n -= 1
//}
//
//func output(n: Int) {
//    if n == 0 {
//        return
//    } else {
//        print(n)
//        output(n: n - 1)
//    }
//}
//
//output(n: 6)

var n = 6
var sum = 0

while n > 0 {
    sum += n
    n -= 1
}

func output(n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
        return n + output(n: n - 1)
    }
}


