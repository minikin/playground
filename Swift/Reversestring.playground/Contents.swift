
import Foundation
import XCTest

// --- Directions
// Given a string, return a new string with the reversed
// order of characters
// --- Examples
//   reverse('apple') === 'elppa'
//   reverse('hello') === 'olleh'
//   reverse('Greetings!') === '!sgniteerG'

func reverse1(_ str: String) -> String {
   var reversed = "";

   for character in str {
     reversed = String(character) + reversed;
   }

   return reversed;
 }

func reverse2(_ str: String) -> String {
    return str.reduce("") { reversed, character  in
        String(character) + reversed
    }
}

func reverse3(_ str: String) -> String {
    return String(str.reversed())
}


class ReverseStringTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testReverse1Success() {
        let reversedString = reverse1("apple")
        XCTAssertEqual(reversedString, "elppa")
    }

    func testReverse2Success() {
        let reversedString = reverse2("apple")
        XCTAssertEqual(reversedString, "elppa")
    }
    
    func testReverse3Success() {
        let reversedString = reverse3("apple")
        XCTAssertEqual(reversedString, "elppa")
    }
}

ReverseStringTests.defaultTestSuite.run()
