// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9


import Foundation
import XCTest

func reversInt(_ number: Int) -> Int {
    let num = String(String(number).reversed())
    let reversed = (num as NSString).integerValue
    return reversed * number.signum()
}

class ReverseIntTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testReversInt51() {
        XCTAssertEqual(reversInt(51), 15)
    }
    
    func testReversInt189() {
        XCTAssertEqual(reversInt(189), 981)
    }
    
    func testReversInt500() {
        XCTAssertEqual(reversInt(500), 5)
    }
    
    func testReversInt_minus_15() {
        XCTAssertEqual(reversInt(-15), -51)
    }
    
    func testReversInt_minus_90() {
        XCTAssertEqual(reversInt(-90), -9)
    }
}

ReverseIntTests.defaultTestSuite.run()

