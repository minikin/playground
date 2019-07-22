// --- Directions
// Given a Int, return true if the Int is a palindrome
// or false if it is not.  Palindromes are objects that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("19891") === true
//   palindrome("123") === false
//   palindrome("19277291") === true

import Foundation
import XCTest

func palindrome( _ number: Int ) -> Bool {
    var num = number
    var reversedNumber = 0
    
    while num > 0 {
        let rightDigit = num % 10
        reversedNumber = reversedNumber * 10 + rightDigit
        num = num / 10
    }
    
    return number == reversedNumber
}

class IntPalindromes: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIntPalindromes19891() {
        XCTAssertEqual(palindrome(19891), true)
    }
    
    func testIntPalindromes123() {
        XCTAssertEqual(palindrome(1234), false)
    }

    func testIntPalindromes19277291() {
        XCTAssertEqual(palindrome(19277291), true)
    }
}

IntPalindromes.defaultTestSuite.run()
