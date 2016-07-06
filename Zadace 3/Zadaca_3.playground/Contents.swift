// For-in petlja
for number in 1...3 {
    print ("\(number) times 5 is \(number * 5)")
}
for primjer in 1...5 {
    print ("\(primjer) pomnozen sa 10 = \(primjer * 10)")
}
//ako ne treba vrijednost _
for _ in 1...3 {
    print("Ne trebaaa")
}

//
let names = ["Anel", "Babac", "Irfan"]
for name in names {
    print("Hello, \(name)!")
}
let imena = ["Anel", "Babac", "Irfan"]
for ime in imena {
    print("Hello, \(ime)!")
}
let numberOfLegs = ["spider" : 8, "ant" : 6, "cat" : 4]
for (animal, legCount) in numberOfLegs {
    print("\(animal) have \(legCount) legs")
}

let count = ["danas" : "ponedjeljak", "sutra" : "Utorak", "prekosutra" : "Srijeda"]
for (vrijeme, dan) in count {
    print("\(vrijeme) je \(dan)")
}


//While
var numbers = [3, 2, 5,]
while numbers.isEmpty == false {
    print("\(numbers.remove(at: 0)) is out!")
}
var niz = [1, 2, 3, 4, 5, 6, 7, 8, 9]
while niz.isEmpty == false {
    print("\(niz.remove(at: 0)) je van!")
}

var count1 = 3
repeat {
    print(count1)
    count1 -= 1
} while count1 > 0

var NG = 10
repeat {
    print(NG)
    NG -= 1
} while NG > 0


//Grananje
// if

var temperature = 22
if temperature >= 18 {
    print("it would be great to wear shorts")
}
var temperature1 = 30
if temperature1 >= 28 {
    print("Kupanje u sorcu")
} else {
    print ("Sorc je gotiva")
}

if temperature1 > 30 {
    print("dobra za kupanje")
} else if temperature1 <= 30 && temperature1 > 25 {
    print("Obuci sorc")
} else {
    print("sjedi kuci")
}

//switch
let character: Character = "e"
switch character {
case "a", "e", "i", "o", "u":
    print("\(character) is a vowel")
case "b", "c", "d", "f" :
    print("\(character) is a consonant")
default:
    print("\(character) is not a vowel or consonant")

}
let karakter: Character = "z"
switch karakter {
case "c", "z", "s", "r", "k" :
    print("\(karakter) pripada prvom skupu")
case "a", "i", "e" :
    print("\(karakter) pripada drugom skupu")
default:
    print("\(karakter) ne pripada")
}

let age = 28
switch age {
case 1..<18:
    print("Underaged")
default:
    print("Adult")
}
let sijalica = 20
switch sijalica {
case 1..<19:
    print("\(sijalica) ne treba biti upaljena")
case 1..<20:
    print("\(sijalica) treba biti upaljena")
default:
    print("Pregorila sijalica")
}


//continue
let string = "Hello world"
var stringWithoutVowels = ""
for character in string.characters {
    switch character {
    case "a", "e", "i", "o", "u" :
        continue
    default:
        stringWithoutVowels.append(character)
    }
}
//break
let array = [1, 4, 15, -2, 9]
for number in array {
    if number > 0 {
        print(number)
    }else {
        break
    }
}
//ovu binary gresku ne razumijem, prijavljuje gresku na if SK < 4 {
/*
let SK = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
for number in SK {
    if SK < 4 {
        print(SK)
    } else {
        break
    }
}
 */

//falltrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
        fallthrough
    default:
description += " an integer"
}
print(description)


//primjer
let opisiBroj = 2
var opis = "Broj \(opisiBroj) je"
switch opisiBroj {
case 2, 4, 6, 8, 10:
    opis += " paran broj i takodjer"
    fallthrough
default:
opis += " cijeli broj"
}
print(opisiBroj)


//Guard
let ages = [27, 31, 15, 17]
for age in ages {
    guard age > 18 else {
    print("We have a minor")
        break
    }
    print ("He is an adult")
}

let godine = [15, 21, 26, 30, 35, 102]
for godina in godine {
    guard godina > 22 else {
        print("Manje od 29")
        break
    }
    print("Vise")

}


//funkcije
func printHelloWorld() {
    print("Hello World")
}
/*
func add(a: Int, b: Int) -> {
    return a + b
}
*/

printHelloWorld()

var number = (3, b: 7)

func sayHelloWorld() -> String {
    return "Hello world"
}

print(sayHelloWorld())

func say(greeting: String, to: String){
    print("\(greeting), \(to)")
}
say(greeting: "Hi", to: "Rick")
say(greeting: "Hello", to: ("John"))

//primjer
func hi(pozdrav: String, za: String) {
    print("\(pozdrav), \(za)")
}
hi(pozdrav: "\("djesi")", za: ("majstore"))
hi(pozdrav: "kako je", za: "pajdo")


func minMax(array:[Int]) -> (min: Int, max: Int) {
    var newMin = array[5]
    var newMax = array[1]
    for value in array[1..<array.count] {
        if value < newMin {
            newMin = value
        } else if value > newMax {
            newMax = value
        }
    }
    return (newMin, newMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


//funkcija vraca opcional - ne radi
/*
func optionalMinMAx(array:[Int]) -> (min: Int, max: Int) {
    if array.isEmpty {
        return nil
    }
var newMin = array[0]
var newMax = array[0]
    for value in array[1..<array.count] {
        if value < newMin {
            newMin = value
        } else if value > newMax {
            newMax = value
        }
    }
    return (newMin, newMax)
}
if let newBounds = optionalMinMax([8, -6, 2, 109, 3, 71]) {
    print("min is \(newBounds.min) and max is \(newBounds.max)")
}
if let optionalMinMax([Int]()) {
    print(optionalBounds)
}
*/

func someFunction(firstArg: String, secondArg: Int) {
    //some code
}
someFunction(firstArg: "Hello", secondArg: 3)

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Bill", and: "Ted"))


/// primjer
func pozdrav(to osoba: String, and pozdravZaKraj: String) -> String {
    return "Zdravo \(osoba) i \(pozdravZaKraj)!"
}
print(pozdrav(to: "Djoni", and: "Zuga"))


func someFunction(parameterWithDefault: Int = 12) {
    print(parameterWithDefault)
}
someFunction(parameterWithDefault: 6)


//variadicni argumenti
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(numbers: 1, 2, 3, 4, 5)


//In-Out argumenti
func swapTwoInts( a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(a: &someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


//ugnijezdjene funkcije
func printThreeTimesHelloWorld(){
    func printNestedHelloWorld() {
        print("Hello World")
    }
    for _ in 1...3 {
        printNestedHelloWorld()
    }
}
printThreeTimesHelloWorld()


//CLOSURE
let greet = { (name: String) -> Void in
    print("Hello \(name)")
}
greet("Jill")

//Enumeracije
enum CompassPoint {
    case North
    case South
    case East
    case West
}
enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
var directionToHead = CompassPoint.North
directionToHead = .East

func whereToHead(direction: CompassPoint) {
    switch direction {
    case .North:
        print("Wear jacket")
    case .South:
        print("Wear shorts")
    default:
        print("Tako care")
    }
}
whereToHead(direction: .North)

enum Planet2: Int {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
Planet2.Earth.rawValue

let planet = Planet2(rawValue: 3)
let pokusaj = Planet2(rawValue: 0)






