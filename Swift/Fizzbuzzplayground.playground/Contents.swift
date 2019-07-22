// --- Directions
// Write a program that console logs the numbers
// from 1 to n. But for multiples of three print
// “fizz” instead of the number and for the multiples
// of five print “buzz”. For numbers which are multiples
// of both three and five print “fizzbuzz”.
// --- Example
//   fizzBuzz(5);
//   1
//   2
//   fizz
//   4
//   buzz

import Foundation
import XCTest

func fizzBuzz(_ num: Int) {
    for value in 1...num {
        if (value % 3 == 0 && value % 5 == 0) {
            print("fizzbuzz")
        } else if (value % 3 == 0) {
             print("fizz")
        } else if (value % 5 == 0) {
             print("buzz")
        } else {
            print(value.description)
        }
    }
}

fizzBuzz(15)

class TestFizzbuzz: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFizzBuzz() {
        
    }
}

TestFizzbuzz.defaultTestSuite.run()
