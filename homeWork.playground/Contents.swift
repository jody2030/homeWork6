import UIKit
import Foundation

//Abstract class for a person

public class Person {
    public var name : String
    public var age : Int
    public var id : Int
    
    
    
     init (name : String , age : Int , id : Int) {
        self.name = name
        self.age = age
        self.id = id
    }
    
    public func getDetails () -> String {
        return " Name : \(name) age : \(age) id : \(id)"
        
    }
    
}

//abstract class to represent a vehicle

class Vehicle {
    var year : Int
    var brand : String
    init (brand : String , year : Int){
        self.brand = brand
        self.year = year
    }
    func start () {
        //default implementation
    }
        
        func stop () {
            //default implementation
        }
        
    }

//abstract class to represent an animal

class Animal {
    var size : String
    var gender : Bool
    init (size : String , gender : Bool){
        self.size = size
        self.gender = gender
    }
    func makeSound () -> String {
       return " "
    }
    func eat () {
        print("the animal is eating ")
    }
}

// protocol to represent a shape

protocol Shape {
    var area : Double
    {
        get }
    var perimeter : Double
    {
        get  }
}


class Rectangle : Shape {
    var length : Double
    var width : Double
    init (length : Double , width : Double) {
        self.length = length
        self.width = width
    }
    var area : Double {
        return length * width
    }
    
    var perimeter : Double {
        return 2 * (length + width)
    }
}

class Circle : Shape {
    var radius : Double
    init (radius : Double) {
        self.radius = radius
    }
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var perimeter: Double {
        return 2 * Double.pi * radius
    }
}


// 1. student

class Student : Person {
  public   var grade : Int
    var GPA : Double
    
    init (name : String , grade : Int , GPA : Double , age : Int , id : Int) {
        self.grade = grade
        self.GPA = GPA
        super.init(name: name, age: age , id: id)
    }
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , GPA : \(GPA) , grade : \(grade) "    }
}


// 2.Teacher

class Teacher : Person {
   private  var subject : String
    var rank : String
    
    init (subject : String , rank : String  , age : Int , id : Int , name : String) {
        self.subject = subject
        self.rank = rank
        super.init(name: name, age: age , id: id)
    }
    
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , subject : \(subject) , rank : \(rank) "    }
    
}

// 3 Engineer

class Engineer : Person {
 fileprivate   var specialization : String
    var experience : Int
    
    init (specialization : String , experience : Int  , age : Int , id : Int , name : String) {
        self.experience = experience
        self.specialization = specialization
        super.init(name: name, age: age , id: id) }
    
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , experience : \(experience) , specialization : \(specialization) "
        
    }
}

// 4 Doctor

class Doctor : Person {
    var specialization : String
    var cerifications : [String]
    
    init (specialization : String , cerifications : [String]  , age : Int , id : Int , name : String) {
        self.cerifications = cerifications
        self.specialization = specialization
        super.init(name: name, age: age , id: id) }
    
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , certifications : \(cerifications) , specialization : \(specialization) " }
}

// 5 Lawyer
class Lawyer : Person {
    var specialization : String
    var licenses : [String]
    init (specialization : String , licenses : [String]  , age : Int , id : Int , name : String) {
        self.specialization = specialization
        self.licenses = licenses
        super.init(name: name, age: age , id: id)
    }
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , licenses : \(licenses) , specialization : \(specialization) " }
}
// 6 sccoer player
class Player : Person {
    var sport : String
    var achievements : [String]
    
    init(name: String, age: Int, id: Int , sport : String , achievements : [String]) {
        self.achievements = achievements
        self.sport = sport
        super.init(name: name, age: age , id: id)
    }
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , sport : \(sport) , achievements : \(achievements) " }    }

// 7 artist
class Artist : Person {
    var specialization : String
    var artWorks : [String]
    
    init (name: String, age: Int, id: Int , specialization : String , artWorks : [String]) {
    self.specialization = specialization
        self.artWorks = artWorks
        super.init(name: name, age: age , id: id)
}
override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , specialization : \(specialization) , artWorks : \(artWorks) " }    }

// 8 politician

class Politician : Person {
    var party : String
    var previousPosition : [String]
    
    init (name: String, age: Int, id: Int , party : String , previousPosition : [String]) {
        self.party = party
        self.previousPosition = previousPosition
        super.init(name: name, age: age , id: id)    }
    
    override func getDetails() -> String {
            return " Name : \(name)  , age : \(age) , id : \(id) , party : \(party) , previousPosition : \(previousPosition) " }
    
}

// 9 Journlist

class Journalist : Person {
    var specialization : String
    var previousJobs : [String]
    
    init (name: String, age: Int, id: Int , specialization : String , previousJobs: [String])
    { self.previousJobs = previousJobs
        self.specialization = specialization
        super.init(name: name, age: age , id: id)
    }
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , specialization : \(specialization) , previousJobs : \(previousJobs) " }
    
}

// 10 chef
class Chef : Person {
    var cuisine : String
    var recipes : [String]
    
    init (name: String, age: Int, id: Int , cuisine : String , recipes: [String]) {
        self.cuisine = cuisine
        self.recipes = recipes
        super.init(name: name, age: age , id: id)    }
    override func getDetails() -> String {
        return " Name : \(name)  , age : \(age) , id : \(id) , culisine : \(cuisine) , recipes : \(recipes) " }
    
}


    
    // 11 car
    class car : Vehicle {
        var numberOfDoors : Int
        var color : String
        init (brand : String , year : Int , numberOfDoors : Int , color : String ) {
            self.color = color
            self.numberOfDoors = numberOfDoors
            super.init(brand: brand, year: year)
        }
        override func start() {
            print("starting the car")
        }
        override func stop() {
            print("stopping the car")
        }
       
    }
    
    // 12 Truck
    class Truck : Vehicle {
        var payloadCapcity : Double
        var speed : Int
        init (brand : String , year : Int ,payloadCapcity : Double , speed : Int ) {
         self.payloadCapcity = payloadCapcity
            self.speed = speed
            super.init(brand: brand, year: year)
        }
        override func start() {
            print("starting the truck")
        }
        override func stop() {
            print("stopping the truck")
        }
    }
    
   // 13 motorcycle
class Motorcycle : Vehicle {
    var enginesize : Double
    var color : String
    init (brand : String , year : Int , enginesize  : Double  , color : String) {
        self.color = color
        self.enginesize = enginesize
        super.init(brand: brand, year: year)
    }
}
  
// 14 boat
class Boat : Vehicle {
    var length : Double
    var color : String
    
    init (brand : String , year : Int , length : Double  , color : String){
        self.color = color
        self.length = length
        super.init(brand: brand, year: year)
    }
    
}

// 15 plane
class Plane : Vehicle {
    var numberOfEngines : Int
    var speed : Int
    init (brand : String , year : Int ,numberOfEngines : Int , speed : Int) {
        self.numberOfEngines = numberOfEngines
        self.speed = speed
        super.init(brand: brand, year: year)    }
    
}

// 16 bicycle

class Bicycle : Vehicle {
    var numberOfGears : Int
    var color : String
    init (brand : String , year : Int , numberOfGears : Int , color : String ) {
        self.numberOfGears = numberOfGears
        self.color = color
        super.init(brand: brand, year: year)    }
          
          }
// 17 skateboard
class Skateboard : Vehicle {
    var length : Double
    var color : String
    
    init (brand : String , year : Int , length : Double , color : String ) {
        self.color = color
        self.length = length
        super.init(brand: brand, year: year)
    }
}
// 18 scooter
class scooter : Vehicle {
    var motoPower : Double
    var name : String
    init (brand : String , year : Int , motoPower : Double , name : String ) {
        self.motoPower = motoPower
        self.name = name
        super.init(brand: brand, year: year)
    }
}
// 19 segway
class segway : Vehicle {
    var wheelSize : Double
    var name : String
    
    init (brand : String , year : Int , wheelSize : Double , name : String ) {
        self.name = name
        self.wheelSize = wheelSize
        super.init(brand: brand, year: year)
    }
          }

// 20 ship

class Ship : Vehicle {
    
    var length : Double
    var color : String
    init (brand : String , year : Int , length : Double , color : String ) {
        self.color = color
        self.length = length
        super.init(brand: brand, year: year)
    }
}



// 21 cat

class cat : Animal {
    var name : String
    var color : String
    init (size : String , gender : Bool , name : String , color : String ) {
        self.color = color
        self.name = name
        super.init(size: size, gender: gender)
    }
    override func makeSound() -> String {
        return "Meow"
    }
}

// 22 dog

class Dog : Animal {
    override func makeSound() -> String {
        return "woof"
    }
}

// 23 bird
class Bird : Animal {
    override func makeSound() -> String {
        return "Chrip"
    }
    override func eat() {
        print("the brid is pecking at seeds")
    }
}
// 24 fish
class Fish : Animal {
    override func eat() {
        print ("the fish is nibbling in algae")
    }
}

// 25 lion

class Lion : Animal {
    override func makeSound() -> String {
     return   "Roar"
    }
    
    override func eat() {
        print("the lion is eating meat")
    }
}

// 26 monkey

class Monkey : Animal {
    override func makeSound() -> String {
        return "ooh ooh aah aah "
    }
    override func eat() {
        print("the monkey is eating bananas")
    }
}

// 27 bear
class Bear : Animal {
    override func makeSound() -> String {
        return "GROWl"
    }
    override func eat() {
        print("the bear is eating honey")
    }
}

// 28 rabbit
class Rabbit : Animal {
    override func makeSound() -> String {
        return "Thump"
    }
    override func eat() {
        print("the rabbit is eathing carrots")
    }
}

// 29 snake
class Snake : Animal {
    override func makeSound() -> String {
        return "Hiss"
    }
    override func eat() {
        print("the snake is eathing mice")
    }
}
// 30 Horse

class Horse : Animal {
    override func makeSound() -> String {
        return "Neigh"
    }
    override func eat() {
        print("the horse is eathing hay")
    }
}
