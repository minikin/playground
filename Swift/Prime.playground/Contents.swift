//A prime number is a whole number greater than 1 whose only factors are 1 and itself.
// A factor is a whole numbers that can be divided evenly into another number.
// The first few prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29.
// Numbers that have more than two factors are called composite numbers.
// The number 1 is neither prime nor composite.

import Foundation
import XCTest

func isPrime(_ p: Int) -> Bool {
    if p <= 1 { return false }
    if p <= 3 { return true }
    
    for i in 2...Int(sqrtf(Float(p))) {
        if p % i == 0 { return false }
    }
    return true
}

class TestPrime: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsPrime() {
        XCTAssertEqual(isPrime(19), true)
    }
    func testIsNotPrime() {
        XCTAssertEqual(isPrime(25), false)
    }
}

TestPrime.defaultTestSuite.run()
