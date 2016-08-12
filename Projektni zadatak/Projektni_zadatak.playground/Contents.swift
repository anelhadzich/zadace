import Foundation

func delayedPrint(a: String)  {
    sleep(2)
    print(a)
}
class Person {
    var firstName: String
    var lastName: String
    var age: Int
    init(firstName: String, lastName: String, age: Int) {
    self.firstName = firstName
    self.lastName = lastName
    self.age = age
    }
}
enum DrivingLicenceType {
    case A, B, C, D
}


protocol DrivingLicence {
    var set: Set<DrivingLicenceType> { get set }
}
protocol CarMonitoringDelegate {
    func engineBroke()
    func lowOnFuel()
    func outOfFuel()
}

class Driver: Person, DrivingLicence {
    var car: Car?
    var mechanic: Mechanic?
    var set: Set<DrivingLicenceType> = []
    init(set: Set<DrivingLicenceType>, firstName: String, lastName: String, age: Int) {
        self.set = set
        super.init(firstName: firstName, lastName: lastName, age: age)
    }
    func callMechanic(mechanic: Mechanic, toFixACar car: Car) {
        if (mechanic.authorizedServicerForLicenceTypes.contains(car.licenceType)) {
            delayedPrint("Mechanic responded he can fix a car")
            mechanic.fixCar(car)
        } else {
            delayedPrint("Mechanic responded he CAN NOT fix this car")
            
        }
    }
    func driveCar(){
        car?.drive()
    }
    }
class Mechanic: Person {
    var authorizedServicerForLicenceTypes: Set<DrivingLicenceType>
    init(firstName: String, lastName: String, age: Int, authorizedServicerForLicenceTypes: Set<DrivingLicenceType>){
    self.authorizedServicerForLicenceTypes = authorizedServicerForLicenceTypes
    super.init(firstName: firstName, lastName: lastName, age: age)
}
    func fixCar(car: Car){
        delayedPrint("\(firstName) is fixing a car")
        car.broken = false
        delayedPrint("Car fixed")
    }
}
class Car {
    var name: String
    var model: String
    var licenceType: DrivingLicenceType
    var fuelTank: Int
    var broken = false
    var engineOn = false
    var driver: DrivingLicence?
    var delegate: CarMonitoringDelegate?
    var crossedKilometers = 0
    private var fuel: Int = 0
    var fuelLevel: Int {
        get {
            return fuel
        }
        set(newValue) {
            if  newValue > fuelTank {
            fuel = fuelTank
            } else {
            fuel = newValue
        }
        }
    }
    init(name: String, model: String, licenceType: DrivingLicenceType, fuelTank: Int, fuelLevel: Int){
    self.name = name
    self.model = model
    self.licenceType = licenceType
    self.fuelTank = fuelTank
    self.fuelLevel = fuelLevel
}
    func stop() {
        engineOn = false
    }
    func drive() {
        delayedPrint("Starting engine")
        engineOn = true
        while engineOn == true {
            if broken == true {
                delayedPrint("engine broke")
                delegate?.engineBroke()
                stop()
                
            }
            if fuelLevel == 10 {
                delayedPrint("Fuel low")
                delegate?.lowOnFuel()
                print("a")
            }
            
            guard (fuelLevel < 0) else {
                delayedPrint("Empty fuel tank")
                delegate?.outOfFuel()
                stop()
                break
            }
            
            fuelLevel -= 1
            crossedKilometers += 10
            if (arc4random() % 100) + 1 == 100 {
                broken = true
            }
        }
    }
        }
extension Driver: CarMonitoringDelegate {
    func engineBroke() {
        delayedPrint("Calling a mechanic")
    }
    func lowOnFuel() {
        var newValue = Int(arc4random() % 100)
        if (newValue <= 33) {
            delayedPrint("I will add some gas later")
            guard newValue <= car!.fuelTank
                else {
                    delayedPrint("I will add some gas now")
                    newValue = car!.fuelTank - car!.fuelLevel
        return
            
            delayedPrint("Adedd fuel. Curent level is \(car!.fuelLevel)")
            }}}
    func outOfFuel() {
        let newValue = Int(arc4random() % 100)
        delayedPrint("I will add some gas now")
        car!.fuelLevel += newValue
        print("out of fuel")
    }}

var driver = Driver(set: [DrivingLicenceType.C], firstName: "Mujo", lastName: "Mujic", age: 30)
var car = Car(name: "Lada", model: "Niva", licenceType: DrivingLicenceType.B, fuelTank: 80, fuelLevel: 60)
var mechanic = Mechanic(firstName: "Kemo", lastName: "Zahirovic", age: 40,authorizedServicerForLicenceTypes: [DrivingLicenceType.B, DrivingLicenceType.C])
driver.car = car
car.delegate? = driver
driver.mechanic = mechanic
for value in 1...10 {
    driver.driveCar()
}
delayedPrint("car crossed \(car.crossedKilometers) in this run")






