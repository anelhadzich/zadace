import Foundation
class Parent: Person {
    var children: [Person]
    var savings: Double?
    
    init(name: String, lastName: String, yearOfBirth: Int, location: Location, children: [Person], savings: Double?) {
        self.children = children
        self.savings = savings
        super.init(name: name, lastName: lastName, yearOfBirth: yearOfBirth, location: location)
    }
    convenience init (children: [Person]){
        self.init(children: [])    }
    override func introduction() -> String {
        if children.isEmpty {
            return "No children"
            // print (children)
        }
        else {
            return super.introduction() + "I am parent of \(children.count)"
        }
        
    }
}

struct Location {
    var latitude: Double
    var longitude: Double
    init(){
        latitude = Double(arc4random() % 181) - 90.0
        longitude = Double(arc4random() % 361) - 90.0
        
    }
}
class Person {
    weak var father: Parent?
    weak var mother: Parent?
    var name: String
    var lastName: String
    var yearOfBirth: Int
    var location = Location()
    var age: Int {
        get {
            return 2016 - yearOfBirth
        }
        set {
            yearOfBirth = 2016 - age
    }
    }
    init(name: String, lastName: String, yearOfBirth: Int, location: Location){
        self.name = name
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
        self.location = location
        
    }
    convenience init(yearOfBirth: Int, location: Location){
        self.init(
            yearOfBirth: 1990,
            location: Location()
        )
    }
    
    
    func introduction() -> String{
        return "Hi, my name is \(name) \(lastName)"
    }
}




//dio 2
struct Course {
    var teacher: Person
    var courseName: String
    
    func aboutTheCourse() -> String {
        return "Course \(courseName) by professor \(teacher.lastName)"
    }
}
class Student: Person {
    var attendingCourses: [Course]
    var grades: [Int]
    var faculty = "WiP"
    var averageGrade: Double {
        get {
            var sum = 0
            for grade in grades {
                sum += grade
                
            }
            return Double (sum) / Double (grades.count)
            
        }
    }
// e ovaj dio iz nekog razloga ne vraca nista
    init (name: String, lastName: String, yearOfBirth: Int, location: Location, attendingCourses: [Course], grades: [Int]) {
        self.attendingCourses = attendingCourses
        self.grades = grades
        super.init(name: name, lastName: lastName, yearOfBirth: yearOfBirth, location: location)
        
        func introduction() -> String {
            return super.introduction() + "I am a student at \(faculty). My favorite course is " + attendingCourses.first!.aboutTheCourse()
        }
    }
    override func introduction() -> String {
        if father?.savings != nil {
            return super.introduction() + ". Father has $\(father!.savings)"
        }
        if mother?.savings != nil {
            return super.introduction() + ". Mother has $\(mother!.savings)"
        }
        else {
            return super.introduction() + ". We are broke"
        }
        
    }
    
}
extension Int {
    mutating func ageInDays() -> Int {
        return self * 365
    }
}

let student = Person(name: "Anel", lastName: "Hadzic", yearOfBirth: 1988, location: Location())
let brother = Person(name: "Ahmed", lastName: "Hadzic", yearOfBirth: 1993, location: Location())

let mother = Parent(name: "Murisa", lastName: "Hadzic ", yearOfBirth: 1963, location: Location(), children: [student, brother], savings: Double(arc4random()%10000))

print(mother.introduction() + " children.")
print(student.introduction() + " and my mother is \(mother.name + " " + mother.lastName).")

    print(student.age.ageInDays())

let mirko = Person(name: "Mirko", lastName: "Babic", yearOfBirth: 1987, location: Location())
let nedim = Person(name: "Nedim", lastName: "Sabic", yearOfBirth: 1982, location: Location())
mirko.introduction()
nedim.introduction()
student.introduction()



