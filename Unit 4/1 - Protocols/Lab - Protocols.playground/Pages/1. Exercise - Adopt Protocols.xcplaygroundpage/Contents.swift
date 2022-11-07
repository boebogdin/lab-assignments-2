/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    var name: String
    var age: Int
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
        }
    
    var description: String {
        return "Human(name: \(name), age: \(age))"
    }
    
    
    
    
}

let humanOne = Human(name: "forTheSakeOfLogic", age: 31)
let humanTwo = Human(name: "forTheSakeOfLogicTwo", age: 32)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(humanOne)
print(humanTwo)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print(humanOne == humanTwo)
print(humanOne != humanTwo)

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
let humanThree = Human(name: "forTheSakeOfLogic3", age: 33)
let humanFour = Human(name: "forTheSakeOfLogic4", age: 34)
let humanFive = Human(name: "forTheSakeOfLogic5", age: 35)

var people: [Human] = [humanOne, humanFive, humanFour, humanTwo, humanThree]
var sortedPeople: [Human] = people.sorted(by: <)
print(sortedPeople)
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
import Foundation
let myJSONEncoder = JSONEncoder()
let myData = try! myJSONEncoder.encode(humanFour)
print(myData)
let myString = String(data: myData, encoding: .utf8)!
print(myString)
/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
