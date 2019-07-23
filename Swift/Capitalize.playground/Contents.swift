// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

import Foundation
import XCTest

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}

func capitalize2(_ string: String) -> String {
    var words = ""
    
    for item in string.split(separator: " ") {
        words.append(String(item).capitalizingFirstLetter() + " ")
    }
    
    return String(words.dropLast())
}

func capitalize1(_ string: String) -> String {
    return ""
}

class TestCapitalize: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCapitalize_1() {
        XCTAssertEqual(capitalize2("a short sentence"), "A Short Sentence")
    }
    
    func testCapitalize_2() {
        XCTAssertEqual(capitalize2("a lazy fox"), "A Lazy Fox")
    }

    func testCapitalize_3() {
        XCTAssertEqual(capitalize2("look, it is working!"), "Look, It Is Working!")
    }
}

TestCapitalize.defaultTestSuite.run()
