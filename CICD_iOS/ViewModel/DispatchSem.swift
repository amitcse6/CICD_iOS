//
//  DispatchSem.swift
//  CICD_iOS
//
//  Created by 11461_amit on 18/9/24.
//

import Foundation

class DispatchSem {
    
    // Create a concurrent queue
    let concurrentQueue = DispatchQueue(label: "com.exp.conQueue", attributes: .concurrent)
    
    // Create a semaphore with an initial value of 1
    let semaphore = DispatchSemaphore(value: 0)

    // Shared resource
    var resourceCounter = 0

    // Concurrent tasks
    func taskOne() {
        for _ in 1...5 {
            resourceCounter += 1
            debugPrint("Task One: \(resourceCounter) \(semaphore)")
            debugPrint(semaphore)
            sleep(1)
            semaphore.signal()
        }
        semaphore.wait()
        semaphore.wait()
        print("......")
    }

//    func taskTwo() {
//        semaphore.wait()
//        for _ in 1...5 {
//            resourceCounter -= 1
//            debugPrint("Task Two: \(resourceCounter) \(semaphore)")
//            debugPrint(semaphore)
//            sleep(2)
//            semaphore.signal()
//        }
//    }
    
    func executeAll() {
        // Run the tasks concurrently
        concurrentQueue.async {
            self.taskOne()
        }
        

//        concurrentQueue.async {
//            self.taskTwo()
//        }
    }

}
