//
//  main.swift
//  Pink Star
//
//  Created by Queralt Sosa Mompel on 20/9/17.
//  Copyright © 2017 Queralt Sosa Mompel. All rights reserved.
//

import Foundation

func input() -> NSString {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding:String.Encoding.utf8.rawValue)!
}

func printResult( _ depth:Int ) -> () {
    var i = 1
    while i < depth {
        var j = depth
        while j >= i {
             print(" ", terminator:"")
            j = j - 1
        }
       
        var m = 1
        while m <= i {
            print(" *", terminator:"")
            m = m + 1
        }
        
        print()
        i = i + 1
        
    }
    
    
    i = 1
    while i <= depth {
        var j = 1
        while j <= i {
            print(" ", terminator:"")
            j = j + 1
        }
        
        var m = depth
        while m >= i {
            print(" *", terminator:"")
            m = m - 1
        }
        
        print()
        i = i + 1
    }

}


print("Introduce a number:")
var number = input()
print(printResult(number.integerValue))
