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
        reversedNumber = reversedNumber * 10 + num % 10
        num /= 10
    }
    
    return number == reversedNumber
}

class TestIntPalindromes: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIntPalindromes_19891() {
        XCTAssertEqual(palindrome(19891), true)
    }
    
    func testIntPalindromes_123() {
        XCTAssertEqual(palindrome(1234), false)
    }

    func testIntPalindromes_19277291() {
        XCTAssertEqual(palindrome(19277291), true)
    }
}

TestIntPalindromes.defaultTestSuite.run()
