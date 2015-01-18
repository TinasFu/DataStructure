// Playground - noun: a place where people can play

import UIKit

func test(inout a: Int) -> Int {
    return a;
}

var a : Int = 1;
let b = test(&a);
a = 3;

println(b);



