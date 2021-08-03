//
//  main.swift
//  Swift-Simple-Class-Object-Example
//
//  Created by Omairys Uzcátegui on 2021-06-03.
//

import Foundation
//check the total hours to make sure if still can add more course or not
func checkTotalHour(total: Int, course: Course)->Int{
    var myHourTotal = total
    if myHourTotal + course.hours < 21 {
        myHourTotal = myHourTotal + course.hours
        registerList.append(course)
    }else{
        print(exceedLimit)
    }
    return myHourTotal
}

func searching(with requiredName: String, courseList: [Course]) -> Course!{
    for course in courseList {
        if requiredName.lowercased()==course.name.lowercased() {
            return course
        }
    }
    return nil
}

func searching(with requiredCode: Int, courseList: [Course]) -> Course!{
    for course in courseList {
        if requiredCode==course.id {
            return course
        }
    }
    return nil
}

func validate(course:Course){
    print("📚")
    course.sumary()
    let courseFees = (course.calculateFees())
    print("The fees of this course: \(courseFees) 💵")
    totalFees = totalFees + courseFees
    totalHour = checkTotalHour(total: totalHour, course: course)
    print ("You have \(totalHour) hours in total until now")
    
}
///
let noFoundMessage = "⛔️Sorry the course was not found"
let exceedLimit = "⛔️Total hours will exceed the limit"
var courseList = [Course]()
var registerList = [Course]()
var totalHour = 0
var totalFees = 0.0
var course : Course? = nil
courseList.append(Course(id: 1001, name: "Database", hours: 8))
courseList.append(Course(id: 1002, name: "Java", hours: 8))
courseList.append(Course(id: 1003, name: "Swift", hours: 4))
courseList.append(Course(id: 1004, name: "iOS", hours: 4))
courseList.append(Course(id: 1005, name: "Android", hours: 3))
courseList.append(Course(id: 1006, name: "Web", hours: 5))
courseList.append(Course(id: 1007, name: "Logic", hours: 5))
courseList.append(Course(id: 1008, name: "Python", hours: 4))
courseList.append(Course(id: 1009, name: "Project", hours: 3))
courseList.append(Course(id: 1010, name: "Business", hours: 3))

print("📚 Classes and Objects 📚")
repeat{
    print("Serch by: 🔎")
    print("1.- Name")
    print("2.- Code")
    let opt = Int(readLine()!)
    
    switch opt {
    case 1:
        print("Insert course name: ")
        let name = readLine()!
        course = searching(with: name, courseList:courseList)
        if course != nil {
            validate(course: course!)
        }else{
            print(noFoundMessage)
        }
    case 2:
        print("Insert course code: ")
        let code = Int(readLine()!)!
        course = searching(with: code, courseList:courseList)
        if course != nil {
            validate(course: course!)
        }else{
            print(noFoundMessage)
        }
    default:
        print("🔴 Wrong option")
    }
    print("Do you want register another Course? yes/no")
}while(readLine()!=="yes")

for myCourses in registerList {
    myCourses.sumary()
}
print("Thank you,\nTotal fees:\(totalFees) 💸")

