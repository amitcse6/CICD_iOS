//
//  HomeViewModel.swift
//  CICD_iOS
//
//  Created by Amit Mondol on 31/8/24.
//

import Foundation

class StudentViewModel {
    
    var students: [Student] = []
    
    func fetchAllStudent(_ total: Int) {
        students = (0..<total).map({Student(name: "Student-\($0)", age: Int.random(in: 5...20))})
    }
}
