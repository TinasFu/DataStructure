// Playground - noun: a place where people can play

import UIKit
import Foundation


func plusOne(inout number: [Int]) -> [Int] {
    var l = number.count
    //var digit0 = number[0]
    
    if number[0] == 0 {
        println("The input array is not valid")
    }
    else{
        for var i = l-1; i >= 0; --i {
            if (number[i] < 9){
                number[i] = number[i] + 1
                break
            }
            else {
                number[i] = 0
            }
            
        }
        
        if (number[0] == 0) {
            number.insert(1, atIndex: 0)
        }
        for element in number {
            print(element)
        }
    }
    return number
}


var number = [9,9,9,9]

plusOne(&number)




