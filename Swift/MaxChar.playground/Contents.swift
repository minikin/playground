// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

import Foundation
import XCTest

func maxChar(_ str: String) -> String {
    var charDictionary = [String:Int]()
    var max = 0;
    var maxChar = ""
    
    for char in str {
        if charDictionary[String(char)] != nil {
            charDictionary[String(char)]! += 1
        } else {
            charDictionary[String(char)] = 1
        }
    }
    
    for char in charDictionary {
        if let value = charDictionary[char.key] {
            if value > max {
                max = value
                maxChar = char.key
            }
        }
    }
    
    return maxChar
}

class TestMaxChar: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMaxChar_abcccccccd() {
        XCTAssertEqual(maxChar("abcccccccd"), "c")
    }
    
    func testMaxChar_apple_1231111() {
        XCTAssertEqual(maxChar("1231111"), "1")
    }
}

TestMaxChar.defaultTestSuite.run()
