import UIKit

//Print Hello World in swift Play Ground
print("Hello World")

//Variables
//Create variables of different types and print it
var a: Int = 5
print(a)
let b: String = "Hello"
print(b)
let c: Character = "A" //let is constant value
print(c)
//var c = "v" //return the error
//print(c)
var d: Float = 22.36585
print(d)
var bol: Bool = true
print(bol)

//Create one integer and perform addition with 5 to that and print values
var num: Int = 20
var r: Int
r = num + 5
print("Addition is :\(r)")

//There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration (prn/100)
let p: Double = 10000
let rate: Double = 0.15
let n: Double = 2
let ans = (p * rate * n ) / 100
print("Ans is : \(ans)")

//Operator
//Create example for String concate using operators
var str1: String = "Welcomt to"
var str2: String =  " home"
print(str1 + str2)

//Create one example for show usage of operator's addition, multiplication, division for integers and floats
var x: Float = 25
var y: Float = 30.33
print("Addition is: ",x + y)
print("Subtraction is: ",x - y)
print("Multiplication is: ",x * y)
print("Division is: ",x / y)

//What is turnery operator and show example of usage?
//-> turnary operator is a condition and execute a block of code based on the condition.
var  val1 = 2
let  ans1  = (val1 >= 18) ? "age is above 18" : "age is under 18"
print(ans1)

//Working with Text
//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
let str3: String = "simform"
let str4 = str3.prefix(2)
print(str4)

//Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.
//Input: “Simform”
//Output: imfor
var str = "Simform"
var start_index = str.startIndex
var end_index = str.endIndex
start_index = str.index(after: start_index)
end_index = str.index(before: end_index)
let range = Range(uncheckedBounds: (start_index, end_index)) //
print(str.substring(with: range))

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
//Input: "Swift", "Examples"
//Output: wiftxamples
var string1 = str.removeFirst()
var string2: String = "Example"
var string3 = string2.removeFirst()
print("\(str) \(string2)")

//Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
//Input: Swift
//Output: iftSw
var revstr: String = "swift"
var revstr1 = revstr.removeFirst()
var revstr2 = "\(revstr)\(revstr1)"
print(revstr2)

//Write a Swift program to test if a given string starts with "Sw".
//Input: Swift
//Output: true
var start: String = "swift"
if start.hasPrefix("sw")
{
    print(true)
}
else{
    print(false)
}

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
//Input: “Simform Solutions”, 3
//Output: Simons
var value1: String = "simform solutions"
var value3 = value1.prefix(3)
var value4 = value1.suffix(3) //method is used for get the char form last
print("\(value3)\(value4)")

//Array
//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
//Input: [1,2,3,1]
//Output: true
let arr = [1,2,3,1]
if (arr.count >= 1 && (arr[0] == (arr[arr.count - 1]))) {
    print(true)
}
else {
    print(false)
}

//Write a Swift program to take one array and find out maximum number from that array
//Input: [0,50,100,20,80,150]
//Output: 150
var array1 = ["Vishal","abx","gfhj"]
print(array1.max())

//Write a Swift program to take one array and sort it in descending order.
print(arr.sorted(by: >)) // > is use for descending order

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array ->3
let ar1 = [1,2,1,3]
if ar1.count > 2 {
    var ar2 = ar1.prefix(2)
    print(ar2)
}

//Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
//Output: 2,10,100
let listOfNumbers: [Int] = [1, 2, 3, 10, 100]
let divisors = [2, 5]
var i = 0
var j = 0
while i < listOfNumbers.count {
    while j < divisors.count {
        if(listOfNumbers[i] % divisors[j] == 0) {
            print("\(listOfNumbers[i])")
            break
        }
        else {
            j += 1
        }
    }
    j = 0
    i += 1
}

//2)Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
//Input: [1,2,3,4]
//Output: [0,0,0,0,0,0,0,4]

var in1 = [1,2,3,4]
if in1.count > 0 {
    var s1 = Array(repeating: 0, count: (in1.count * 2) - 1 )
    s1.append(in1[3])
    print(s1)
}

//Loop
// 1) Print the powers of 2 that are less than or equal to N.
for i in 1...100 {
    let result : Decimal = pow(2, i)
    if(result < 100) {
        print(result)
    }
}

//2) Given an integer N draw a square of N x N asterisks. Look at the examples.
for _ in 1...3 {
    for _ in 1...3 {
        print("*", terminator: " ")
    }
    print("\n")
}

//3) Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
for i in 1...4 {
    for _ in 1...i {
        print("*", terminator: " ")
    }
    print("\n")
}

//4) Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.
var n12 = 5
for i in stride(from: 1, to: n12, by: 1) {
    for k in stride (from: n12-i, to: 0 , by: -1) {
    }
    for j in stride (from: 0, to: i*2-1 , by: 1) {
        print("*",terminator: "")
    }
    print(" ")
    
}

//5)You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).
var Val1 = 0 , n1 = 17 , i1 = 2
while i1 < Val1 {
    if n1 % i1 == 0 {
        Val1 = 1
        break
    }
}
if(Val1 == 0) {
    print(" Prime")
}
else{
    print("Not Prime")
}

//Dictionary
//1) You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string.
var code = [
    
    "a" : "b",
    
    "b" : "c",
    
    "c" : "d",
    
    "d" : "e",
    
    "e" : "f",
    
    "f" : "g",
    
    "g" : "h",
    
    "h" : "i",
    
    "i" : "j",
    
    "j" : "k",
    
    "k" : "l",
    
    "l" : "m",
    
    "m" : "n",
    
    "n" : "o",
    
    "o" : "p",
    
    "p" : "q",
    
    "q" : "r",
    
    "r" : "s",
    
    "s" : "t",
    
    "t" : "u",
    
    "u" : "v",
    
    "v" : "w",
    
    "w" : "x",
    
    "x" : "y",
    
    "y" : "z",
    
    "z" : "a" ]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
for i in encodedMessage {
    for (key,value) in code {
        if value == String(i) {
            print(key , terminator: "")}
    }
}
print("\n")
//2) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]
var firstname = people.map{ $0["firstName"] ?? "default"}
print("\n",firstname)

//3) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.
var people3: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]
var firstNames = [String]()
for (index, dict) in people3.enumerated() {
    for key in dict.keys {
        if key == "firstName" {
            if let firstNameUnwrapped = people3[index][key] {
                firstNames.append(firstNameUnwrapped)
            }
        }
    }
}
print(firstNames)
var fullNames = [String]()
for (index, dict) in people3.enumerated() {
    for key in dict.keys {
        if key == "firstName" {
            if  let firstName = people3[index]["firstName"],
                let lastName = people3[index]["lastName"] {
                fullNames.append("\(firstName) \(lastName)")
            }
        }
    }
}
print(fullNames)

//4) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.

var people4: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 12
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]
var sorte12 = people4.min{ x,y in
    (x["score"] as? Int ?? 0) < (y["score"] as? Int ?? 0)
}
print(sorte12)

//5) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
var people1: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]
var sorte1 = people1.sorted{ i,j in
    (i["score"] as? Int ?? 0) > (j["score"] as? Int ?? 0)
}
print(sorte1)
var firstarray = sorte1.map{$0["firstName"] ?? ""}
var secondArray = sorte1.map{$0["lastName"] ?? ""}
var score12 = sorte1.map{$0["score"] ?? ""}
print(score12)
for (firstName,(lastName,score123)) in zip(firstarray,zip(secondArray,score12)) {
    print("\(firstName)\(lastName) - \(score123)")
}

//6) You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var app: [Int : Int ] = [:]
var newarray = [Int]()
for i in numbers {
    if app.keys.contains(i) {
        app.updateValue(app[i]! + 1, forKey: i)
    }
    else {
        app[i] = 1
    }
}
for key in app.keys {
    newarray.append(key)
}
var sortedArr = newarray.sorted()
for j in sortedArr {
    print("\(j) ->\(app[j]!)")
}

//Optionals:
//1)Create an example of demonstrating How to declare optionals in swift?
var optional: String?
print("\n",optional)
var stroptional: String? = nil
stroptional = "Vishal"
print(stroptional)

//2) Create one example of show usage of optional binding
var optional1: String? = "vishal"
print("\n",optional1!.count)
//3) Create one example using if-let
var name1: String?
//name1 =
if let nameFound = name1 {
    print("name : \(nameFound)")
}
else {
    print("Nil")
}
//4) Create one example using guard-let
func oddeven() {
    let number = 12
    guard number % 2 == 0 else {
        print("Number is Odd")
        return
    }
    print("Number is even")
}
oddeven()
//5) Create one example using nil colloison operator.
var nameis: String?
let nameans = nameis ?? "vishal"
print(nameans)

//1. Breakfast
//You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
//Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
//If you can cook bacon and eggs print you can cook bacon and eggs.
//If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.
//Input:
//var baconAge = 3
//var eggsAge = 2
//Output:
//you can cook bacon and eggs
var baconage: Int = 3
var eggsage: Int = 2
var ansstr : String = "you can cook"
if baconage < 7 || eggsage < 21 {
    if baconage < 7 {
        ansstr += " bacon"
    }
    if eggsage < 21 {
        ansstr += " and  eggs"
    }
}
else {
    ansstr = "you can't cook"
}
print(ansstr)

//2. Leap Year
//You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
//The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.

var year = 2000
if(year % 4 == 0) {
    if( (year % 100) == 0 && (year % 400) != 0 ) {
        print("Year is not leap year")
    }
    else {
        print("year is leap year")
    }
}
else {
    print(year,terminator:  " ")
    print("Year is not leap year")
}

//3.Hitpoints
//You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
// 100 represents full health
// 0 represents dead.
//You want to add regenerating health to the game using the following rules:
//HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)
//When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)
//If the character has 0 HP then he doesn’t regenerate life (he’s dead)
//Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.
var hp = 60
switch hp {
case 75 :
    hp = 80
    print("\(hp)")
case 32 :
    hp = 40
    print(hp)
case _ where  hp < 20  :
    hp = 20
    print(hp)
case 0 :
    print("he’s dead")
default :
    print(hp)
}

//4)You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.You are also given your grade in the class stored in a variable yourGrade of type Double.Print above average if your grade is greater than the class average or below average” otherwise. Note: the average of the class includes your grade.
var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 9.0
var avrage : Double = (grade1 + grade2 + grade3 + yourGrade) / 4.0
if yourGrade > avrage {
    print("above avrage")
}
else {
    print("below avrage")
}

//5)You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.Print the total cost of the meal.
var mealCost1:Double = 3.5
var tip:Int = 20
//Output:
//4.2
print(((mealCost1 * Double (tip) ) / 100) + mealCost1)
