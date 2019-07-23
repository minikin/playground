// --- Directions
// Check to see if two provided strings are anagrams of each other.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

import UIKit
import XCTest

func anagrams1(_ str1: String, _ str2: String) -> Bool {
    return cleanString(str1).sorted() == cleanString(str2).sorted()
}

func cleanString(_ string: String) -> String {
    return  string.replacingOccurrences(of: "[\\$\\!\\#\\@\\s]",
                                        with: "",
                                        options: .regularExpression).lowercased()
}

func anagrams2(_ str1: String, _ str2 : String) -> Bool {
    return buildDictionary(str1) == buildDictionary(str2) ? true : false
}

func buildDictionary(_ string: String) -> [Character: Int] {
    var dictionary = [Character: Int]()
    let trimmedString = string.replacingOccurrences(of: "[\\$\\!\\#\\@\\s]",
                                                    with: "",
                                                    options: .regularExpression).lowercased()

    trimmedString.forEach { char in
        if dictionary[char] != nil {
            dictionary[char]! += 1
        } else {
            dictionary[char] = 1
        }
    }
    return dictionary
}

class TestAnagramsString: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAnagrams_1() {
        XCTAssertEqual(anagrams1("rail safety", "fairy tales"), true)
    }
    
    func testAnagrams_2() {
        XCTAssertEqual(anagrams1("RAIL!    SAFETY!", "fairy tales"), true)
    }
    
    func testAnagrams_3() {
        XCTAssertEqual(anagrams1("Hi there", "Bye there"), false)
    }

}

TestAnagramsString.defaultTestSuite.run()
