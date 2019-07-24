// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3
import Foundation
import XCTest


func fibonacci1(_ n: Int) -> Int {
    var result = [0, 1]
    
    for i in 2...n {
        let a = result[i - 1]
        let b = result[i - 2]
        result.append(a + b)
    }
    
    return result[n]
}

func slowFib(_ n: Int)  -> Int {
    if n < 2 {
        return n
    } else {
        return slowFib(n - 1) + slowFib(n - 2)
    }
}

slowFib(4)

class TestFibonacci: XCTestCase {
    
}

TestFibonacci.defaultTestSuite.run()
