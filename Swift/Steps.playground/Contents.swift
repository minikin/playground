// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'


import Foundation
import XCTest

func steps1(_ n: Int) {
    for row in 0...n {
        var stair = ""
        for column in 0...n {
           if column <= row {
            stair += "#"
           } else {
             stair += " "
           }
        }
    print(stair)
    }
}

func steps2(_ n: Int, _ row: Int = 0, _ stair: String = "") {
    if n == row { return }
    
    print(n, row, stair.count)
    
    if n == (stair.count + 1) {
        print(stair)
        steps2(n, row + 1)
    }
    
    let add = stair.count <= row ? "#" : " "
    steps2(n, row + 1, stair + add)
}

steps2(3)
