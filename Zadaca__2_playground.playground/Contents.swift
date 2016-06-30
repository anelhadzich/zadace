//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let pi: Double = 3.14
var numberOfSamples: Int = 7
//Camel case

let piInfered = 3.14
// naglasavanje tipa, rijetko se koristi

var hello = "Hello world"
print(hello)
// Hello world

let swift = "Swift"
print ("\(hello) we print in \(swift)")
// printanje vise promjenjljivih
//MOJ PRIMJER
let xcode = "Xcode"
print ("\(hello) we print in \(xcode)")

/* viselinijski komentar
 */

var name: String!
var comment: String?
name = "Travnik"
comment = "Cool town"
/* ? ili ima vrijednost ili je 0
   ! ili ima vrijednost ili je error
 */

if let comment = comment {
    print(comment)
}
//Primjer 2
if let name = name {
    print(name)
}
//Opcional / privremena konstanta

let b = 20
var a = 10
a = b
// =

"Xcode " + "Swift"
// Aritmetika

9 % 7
10 % 5
// ostatak pri dijeljenju

let negativeNumber = -6
print(negativeNumber < 0 ? "tacno" : "nije tacno")
//ternarni operator ?:

var newTown: String?
print(newTown ?? "Banja Luka")
//Primjer
var novoSelo: Int?
print(novoSelo ?? "Selo")
//operator ??

for i in 1...3 {
    print("\(i) times 3 equals \(i * 3)")
}


var lightsOn = true
if lightsOn == true {
    lightsOn = false
}
let isTired = true
if lightsOn == false && isTired == true {
    print("go to sleep")
}
//logi;ki operatori

let time = 3.15
if (isTired == true && lightsOn == false) || time < 3.0 {
    print("Spavanjeeee")
}
//grupisanje intervala zagradama

var emptyString = ""
var someString = "Hello"
emptyString.isEmpty
//provjera praznog stringa

var helloWorld = "Hello"
helloWorld += " World"
/* let hi = "Djesi"
hi += "majstore"
 */
//ne moze sa konstantom

for character in "Bosnia".characters {
    print(character)
}

let characters: [Character] = ["l", "o", "v", "e"]
let loveString = String(characters)
print(loveString)
//spajanje stringova i karaktera

let six = 6
let five = 5
let result = "\(six) times \(five) is equal \(six * five)"

let aa = 10
let bb = 20
let rjesenje = "\(aa) plus \(bb) is equal \(aa + bb)"
//umetanje drugih tipova u String


let quote = "\"Be yourself; eeryone else is already taken. \"\n - Oscar Wilde"
print(quote)

let izjava = "\"Ubi mene ova tastatura na virtualnoj masini. \"\n - Anel Hadzic"
print(izjava)
//specijalni karakteri

let chick = "Chick"
let anotherChick = "Chick"
if chick == anotherChick {
    print("This is same chick")
}
//poredjenje sa == i !=

var array = [1, 2]
array.append(3)
let constArray = [3, 5]
//constArray.append(6) - greska jer je konstanta, nema dodavanja ni oduzimanja

var strings = [String]()
var shoppingList = ["Eggs", "Milk"]
let additionalList = ["Cookies", "Bananas"]
let newlist = shoppingList + additionalList

var kucnaLista = ["paradajz", "paprika", "biber"]
var dodatnaLista = ["mlijeko", "sok", "vegeta"]
let zajedno = kucnaLista + dodatnaLista
//nizovi

var newArray = [3]
newArray.isEmpty
newArray.append(5)
newArray.count

var noviNiz = [7, 8, 9]
noviNiz.isEmpty
noviNiz.append(10)
noviNiz.count
//pristupanje nizu

print(newArray[0])
let subArray = newArray[0...1]

print(noviNiz[2])
let josJedanNiz = noviNiz[0...1]
//pristupanje pojedinacnom elementu

noviNiz.insert(6, at: 0)
noviNiz.remove(at: 4)
//igranje sa nizom

for item in kucnaLista {
    print(item)
}


var letters = Set<Character>()

var favouriteGenres: Set<String> = ["Rock", "Classical", "Hip Hop"]
favouriteGenres.isEmpty
favouriteGenres.count
favouriteGenres.insert("Domaca")
favouriteGenres.removeAll()
favouriteGenres.contains("Rock")
//skupovi i pristupanje

for genre in favouriteGenres {
    print(genre)
}

let setA: Set<Int> = [1, 2, 3]
let setB: Set<Int> = [1, 4, 3]
setA.intersection(setB)
setA.union(setB)
setA.symmetricDifference(setB)
//operacije nad skupovima

let numberOfIntegers = [Int: String]()



