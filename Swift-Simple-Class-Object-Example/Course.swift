//
//  Course.swift
//  Swift-Simple-Class-Object-Example
//
//  Created by Omairys Uzcátegui on 2021-08-03.
//

import Foundation

class Course{
    var id = Int()
    var name = String()
    var hours = Int()
    //var fees = Double()
    
    init(id: Int, name: String, hours: Int) {
        self.id = id
        self.name = name
        self.hours = hours
    }
    
    func calculateFees() -> Double {
        var totalFees: Double
        if hours<4{
            totalFees =  1150.0
        }else if hours<7{
            totalFees =  2300.0
        }else {
            totalFees = 3450
        }
        return totalFees
    }
    
    func sumary(){
        print("Course Id : \(self.id)\nCourse Name: \(self.name)\nHours:  \(self.hours)")
    }
}
