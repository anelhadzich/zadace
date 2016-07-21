
import Foundation
struct Location {
 var latitude: Double
 var longitude: Double
 init(){
 latitude = Double(arc4random() % 181) - 90.0
 longitude = Double(arc4random() % 361) - 90.0
 
 }
 }
class Person {
    var name: String
    var lastName: String
    var yearOfBirth: Int
    var location = Location()
    var age: Int {
        get {
            return 2016 - yearOfBirth
        }
    }
    init(name: String, lastName: String, yearOfBirth: Int, location: Location){
        self.name = name
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
        self.location = location
        
    }
    convenience init(name: String, lastName: String){
        self.init(
            name: name,
            lastName: lastName,
            yearOfBirth: 1990,
            location: Location()
        )
    }
    
    
    func introduction() -> String{
        return "Hi, my name is \(name)\(lastName)"
    }
}
let mirko = Person(name: "Mirko", lastName: "Babic", yearOfBirth: 1987, location: Location())
let nedim = Person(name: "Nedim", lastName: "Sabic", yearOfBirth: 1982, location: Location())
mirko.introduction()
nedim.introduction()


//dio 2
struct Course {
    var teacher: Person
    var courseName: String

func aboutTheCourse() -> String {
    return "Course \(courseName) by professor \(teacher.lastName)"
}
}
class Student: Person {
    var attendingCourse: [Course]
    var grades: [Int]
    var faculty = "WiP"
    var avergeGrade: Double {
        get {
            var sum: Int = 0
            for grade in grades {
                sum += grade
            }
            return Double (sum) / Double (grades.count)
            
        }
    }
init(name: String, lastName: String, yearOfBirth: Int, location: Location, attendingCourse: [Course], grades: [Int]){
    self.attendingCourse = attendingCourse
    self.grades = grades
    super.init(name: name, lastName: lastName, yearOfBirth: yearOfBirth, location: Location())

func introduction() -> String {
    return super.introduction() + "I am a student at \(faculty). My favorite course is " + attendingCourse.first!.aboutTheCourse()
}
    }
}








