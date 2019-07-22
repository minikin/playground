// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

import Foundation
import XCTest

func chunk<Element>(_ array: [Element], size: Int) -> [[Element]] {
    return stride(from: 0, to: array.count, by: size).map {
        Array(array[$0 ..< Swift.min($0 + size, array.count)])
    }
}

func chunk2<Element>(_ array: [Element], size: Int) -> [[Element]] {
    var chunked = [[Element]]()
    var batch = [Element]()
    
    for element in array {
        batch.append(element)
        
        if batch.count == size {
            chunked.append(batch)
            batch = []
        }
    }
    
    if !batch.isEmpty {
        chunked.append(batch)
    }
    
    return chunked
}


class TestArrayChunk: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testChunk_1() {
        let chucnked = chunk2([1, 2, 3, 4], size: 2)
        XCTAssertEqual(chucnked, [[ 1, 2], [3, 4]])
    }
    
    func testChunk_2() {
        let chucnked = chunk2([1, 2, 3, 4, 5], size: 2)
        XCTAssertEqual(chucnked, [[ 1, 2], [3, 4], [5]])
    }

    func testChunk_3() {
        let chucnked = chunk2([1, 2, 3, 4, 5, 6, 7, 8], size: 3)
        XCTAssertEqual(chucnked,  [[ 1, 2, 3], [4, 5, 6], [7, 8]])
    }

    func testChunk_4() {
        let chucnked = chunk2([1, 2, 3, 4, 5], size: 4)
        XCTAssertEqual(chucnked,  [[ 1, 2, 3, 4], [5]])
    }

    func testChunk_5() {
        let chucnked = chunk2([1, 2, 3, 4, 5], size: 10)
        XCTAssertEqual(chucnked,  [[ 1, 2, 3, 4, 5]])
    }
 }

TestArrayChunk.defaultTestSuite.run()
