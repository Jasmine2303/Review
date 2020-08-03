/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit

/*:

- Variables

Create a variable called name and initialize it to the name of your favorite actor, singer, or sports celebrity */
var namefavoritesinger = "Selena Gomez"
print (namefavoritesinger)
 var Name = "Jasmine"
/*:
- Displaying on the screen

Display the contents of name on the screen

 Change the value of name to your name*/

/*:
- Constants
 
Display the contents of name

Create a constant (let instead of var) called language and initialize it to "Swift"

Display the contents of the language constant on screen

Create 3 different constants and initialize them to hold integers of your choice. Name the constants a, b, and c

Create 3 constants that are doubles (they have decimal points) Initialize them with values of your choice. Name the constants d, e, and f*/
let language: String = "Swift"
print (language)
let constantA = 4
let constantB = 2
let constantC = 7
let constantD = 1.4
let constantE = 4.9
let constantF = 8.7
let constantG = 10
/*:
- Operators

Create an assortment of statements using the constants that you created that will perform the following actions - then display the equation and the result on the screen.*/
var adding = Int ();
adding = constantB + constantC + constantA + constantG;
print(constantB + constantC + constantA + constantG)

var sub = Int ();
sub = Int(constantF - constantD);
print (constantF - constantD);

var div = Int ();
div = Int (constantG / constantB)
print (constantG / constantB)

var mul = Int ();
mul = Int (constantE * constantD)
print ( constantE * constantD)

/*:
- If Statements
 
Use the following constants to solve the problems :*/
 
let temperature = 90
let raining = true
var time  = "Morning"

/*: Write a statement that tells someone to wear shorts if it is over 80 degrees, and jeans if it is less than 80 degrees. Check with the temperature constant

Check the raining constant and tell the user if they need an umbrella or not

Check the time constant and if it is morning tell the user to go to school, if it is afternoon tell the user to go home, and if it is night tell the user to go to bed*/
if temperature > 80 {
    print ("You can wear shorts!")
} else {
    print ("You have to wear pants")
}

if raining {
    print ("Grab an umbrella")
} else {
    print ("Go ahead and go")
}


switch time {
case "Morning" :
    print (" go to school")
case "Afternoon" :
    print ("go home")
case "Night" :
    print ("go to bed")
default:
    <#code#>
}
/*:
- Loops

Using a for loop print the numbers from 1 to 10 on screen

Using  a while loop print the numbers from 10 to 1 on screen*/
    var count = 10
for index in 1...10 {
    sleep (1)
    print ("\(String(describing:index)) out of 10 ")
}

let reversedCollection = (0...10).reversed ()
for index in reversedCollection {
    print (index)
}
/*:
- Collections

Create an array that holds five strings

Create a tuple that holds two strings

Using a loop, step through one of the collections you created and print all of the items to the screen*/
var favoriteFruits: [String] = ["Watermelon", "Pineapple", "Strawberries", "Mango" , "Cherries"]
print( "The list contains \(favoriteFruits.count) items." )

var point = (0,0)
point.0 = 8
point.1 = 4
point// (8, 4)
print (point)
/*:
- Closures

Create a closure that subtracts one number from another and prints the results, use the closure. You may pass it constants or numbers*/
var number1 = 30
var number2 = 12
var results : (Int, Int) -> Int = {(number1, number2) in
    return number1 - number2
}
 results (number1, number2)

/*:
- Enums
 
Create an enum that holds the first name of everyone in your group

Create a switch statement based on the enum that will display the birthday of the
selected person

Test it by using your own name*/
enum group : String, CaseIterable {
    case name1 = "Jose"
    case name2 = "Berenice"
    case name3 = "Jalen"
    case name4 = "Aisha"
    case name5 = "Jasmine"
}
 
var myName = group.name5
switch myName {
case.name5, .name2:
    print ("Happy Birhday,\(group.name5.rawValue)!")
default :
print("Happy Birthday")
}
/*:
- Structure
 
Create a structure called Name that holds a first, middle, and last name and prints them on screen in one line with spaces between them

Create an instance of the Name structure, pass it your name, and use the instance you created to print your  name to the screen*/
struct name {
    var firstName :String
    var middleName : String
    var lastName : String

    init (strFirst: String, strMiddle: String, strLast: String) {
        self.firstName = strFirst
        self.middleName = strMiddle
        self.lastName = strLast
}

}
var myname = name (strFirst: "Jasmine" , strMiddle : "Marie" , strLast : "Alarcon")
print ("Hello, my name is \(myname.firstName) \(myname.middleName) \(myname.lastName).")

/*:
- Class
 
Create a class called Coffee that accepts size, caffineated,  cream,  and sugar then prints the order on screen

Create an instance of the class

Use the instance of the class and call the function*/
class Coffee {
    var theCupSize: cupSize
    var hasCaffine : Bool
    var hascream : Bool
    var hasSugar : Bool
    
    enum cupSize  : String, CaseIterable {
        case small = "S"
        case med = "M"
        case large = "L"
        
    }
    
    init (incSize : cupSize, hasCaffine : Bool, hascream: Bool, hasSugar: Bool) {
        self.theCupSize = incSize
        self.hasCaffine = hasCaffine
        self.hascream = hascream
        self.hasSugar = hasSugar
        
    }
    
    
    func printAll () {
        print ("My cup of coffee is\(theCupSize.rawValue)")
        if hasCaffine {
            print ("it has caffine:)")
        } else {
            print ("it does not have caffine")
            
        }
     
        if hasSugar {
            print ("sugar has been added:)")
        }else {
            print ("needs sugar")
}

        if hascream {
            print ("cream has been added:)")
        } else {
            print (" has no cream")
}
}
}
var myCoffee = Coffee(incSize: .small, hasCaffine: true , hascream: true , hasSugar: true )
myCoffee.printAll ()
