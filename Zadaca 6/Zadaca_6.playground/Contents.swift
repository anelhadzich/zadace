import Foundation
struct Location {
    var latitude: Double
    var longitude: Double
    init(){
        latitude = Double(arc4random() % 181) - 90.0
        longitude = Double(arc4random() % 361) - 90.0
        
    }
}
struct Contact {
    var name: String
    var phoneNumber: Int
}
class Message {
    let sender: Contact
    let text: String
    var status: Status = Status.Received
    enum Status {
        case Received
        case Read
    }
    init(sender: Contact, text: String) {
        self.sender = sender
        self.text  = text
    }
    func changeStatusToRead() {
        status = .Read
    }
}
protocol MessageHandlerDelegate: class {
    func didReceiveMessage(message: Message)
}

class Telephone {
    private var messages: [Message] = [Message]()
    var model: String
    weak var delegate: MessageHandlerDelegate?
    init (model: String) {
        self.model = model
    }
    func addNewMessage(message: Message){
        messages = [message]
        delegate?.didReceiveMessage(message: message)
    }
}

class Person: MessageHandlerDelegate {
    var name: String
    var lastName: String
    var yearOfBirth: Int
    var location = Location()
    private var telephone: Telephone?
    var age: Int {
        get {
            return 2016 - yearOfBirth
        }
    }
    func addTelephone(telephone: Telephone){
        self.telephone = telephone
        telephone.delegate = self
    }
    init(name: String, lastName: String, yearOfBirth: Int, location: Location){
        self.name = name
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
        self.location = location
    }
    convenience init(name: String, lastName: String){
        self.init(name: name,lastName: lastName,yearOfBirth: 1990,location: Location())
    }
    
    
    func introduction() -> String{
        return "Hi, my name is \(name)"
    }
    func didReceiveMessage(message: Message) {
        readMessage(message: message)
    }
    func removeTelephone() {
        telephone = nil
        telephone?.delegate = nil
    }
    private func readMessage(message: Message) {
        message.changeStatusToRead()
        print("Hey, I have got message from \(message.sender.name) \(message.text)")
    }
}

var telephone = Telephone(model: "Nokia3310")
var osoba = Person(name: "Anel", lastName: "Hadzic", yearOfBirth: 1988, location: Location())
osoba.addTelephone(telephone: telephone)
let contact1 = Contact(name: "kontakt1", phoneNumber: 555444)
let contact2 = Contact(name: "kontakt2", phoneNumber: 444333)
let contact3 = Contact(name: "kontakt3", phoneNumber: 333222)

let message1 = Message(sender: contact1, text: "Message 1")
let message2 = Message(sender: contact2, text: "Message 2")
let message3 = Message(sender: contact3, text: "Message 3")

telephone.addNewMessage(message: message1)
telephone.addNewMessage(message: message2)

osoba.removeTelephone()
telephone.addNewMessage(message: message3)



