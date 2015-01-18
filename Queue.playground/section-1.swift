// Playground - noun: a place where people can play

import UIKit



class Queue {
    
    var queueArray = [String]()
    
    func enqueue(stringToEnqueue : String) {
        self.queueArray.append(stringToEnqueue)
    }
    
    func dequeue() -> String? {
        if !queueArray.isEmpty {
            var dequeuedString = queueArray.first
            queueArray.removeAtIndex(0)
            return dequeuedString!
        } else {
            return nil
        }
    }

}



var myQueue = Queue()

myQueue.enqueue("A")
myQueue.enqueue("B")
myQueue.enqueue("C")

myQueue.dequeue()

myQueue

