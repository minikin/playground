// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false


import Foundation
import XCTest

func palindrome1(_ str: String) -> Bool {
    let reverseString = String(str.reversed())
    if !str.isEmpty && str == reverseString  {
         return true
    } else {
        return false
    }
}

func palindrome2(_ str: String) -> Bool {
    var position = 0
    
    while position < str.count / 2 {
        let startIndex = str.index(str.startIndex, offsetBy: position)
        let endIndex = str.index(str.endIndex, offsetBy: -position - 1)
        
        if str[startIndex] == str[endIndex] {
            position += 1
        } else {
            return false
        }
    }
    
    return true
}



class TestPalindromes: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsPalindrome1() {
        XCTAssertEqual(palindrome1("abba"), true)
    }
    
    func testIsNotPalindrome1() {
        XCTAssertNotEqual(palindrome1("abcdefg"), true)
    }
    
    func testIsPalindrome2() {
        XCTAssertEqual(palindrome2("abba"), true)
    }
    
    func testIsNotPalindrome2() {
        XCTAssertNotEqual(palindrome2("abcdefg"), true)
    }
}

TestPalindromes.defaultTestSuite.run()
