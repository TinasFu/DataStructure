 // Playground - noun: a place where people can play

import UIKit

func combineTwoStrings(a : String, b : String) -> String {
    return a + b
}

//calling the function
combineTwoStrings("Brad", "Johnson")

//create a variable to store the function
var combineTwoStringsFunction : (String,String) -> String = combineTwoStrings

//create a function that takes in a function as a parameter
func doSomethingWithTwoStrings(a : String, b : String, doSomething : (String, String) -> String) -> String {
    return doSomething(a,b)
}


doSomethingWithTwoStrings("Brad", "Johnson", combineTwoStringsFunction)

//trailing closure, no ","
doSomethingWithTwoStrings("Brad", "Johnson") { (a : String, b : String) -> String in
    return a + b
}

 doSomethingWithTwoStrings("Brad", "Johnson") {
    $0 + $1
 }



