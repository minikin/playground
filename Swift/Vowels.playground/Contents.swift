// --- Directions
// Write a function that returns the number of vowels
// used in a string.  Vowels are the characters 'a', 'e'
// 'i', 'o', and 'u'.
// --- Examples
//   vowels('Hi There!') --> 3
//   vowels('Why do you ask?') --> 4
//   vowels('Why?') --> 0

import Foundation
import XCTest

func vowels(_ string: String) -> Int {
    var count = 0
    let checker = ["a", "e", "i", "o", "u"]
    
    for char in string {
        if checker.contains(String(char)) {
            count += 1
        }
    }
    
    return count
}


class TestCowels: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testVowels_1() {
        XCTAssertEqual(vowels("Hi There!"), 3)
    }
    
    func testVowels_2() {
        XCTAssertEqual(vowels("Why do you ask?"), 4)
    }
    
    func testVowels_3() {
        XCTAssertEqual(vowels("Why?"), 0)
    }
}

TestCowels.defaultTestSuite.run()

