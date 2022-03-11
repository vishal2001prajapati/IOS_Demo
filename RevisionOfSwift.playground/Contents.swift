//var nameAndEnrollment: [String:Int] = ["qwe": 1,"qwe": 2,"dfg": 3,"api": 4]
//
//nameAndEnrollment["vis"] = 10
//
//print(nameAndEnrollment)
import Foundation
var array = [1,5,6,4,11]
print(array.sorted(by: >))
var arar = array.filter{$0 == 4}
print(arar)
//let arr = ["Hello","Bye","Halo"]
//let filtered = arr.filter { $0.contains("lo") }
//print(filtered)
var str: String = ""
for i in 1...9
{
    str.append(contentsOf: String(i))
}
print(str)


//var arr: Int = []
//for i in 1...100 {
//    print(arr.append(i))
//}

//string
var name: String = "Roman"
print(name)
let city: String = "ABC"
print(city)
name.append(contentsOf: city)
print(name)
//Integer
var stockPrice = 667
print(stockPrice)
var personName: String? = nil
//personName = "Seth"
print(personName)
if(personName != nil) {
    print(personName)
}
else {
    print("Seth")
}
//operators
//Arithmetic
var a: Int = 5
var b: Int = 10
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)
a += 2
print(a)
//Comparision operator
print(3 == 2)
print(3 > 2)
print(3 < 2)
print(3 >= 2)
print(3 <= 2)
//Logical Operator
let boolean1 = true
let boolean2 = false
if boolean1 && boolean2 {
    print(true)
}
else {
    print(false)
}
if boolean1 || boolean2 {
    print(true)
}
else {
    print(false)
}
//Ternary Operator
var age: Int = 15
let output = age >= 18 ? "You are eligible for license" : "You not eligible for license"
print(output)
//if statement
var mark: Int = 20
if age <= 18 {
    print("You are eligible for license")
}
else {
    print("You not eligible for license")
}
//nested if-else
var number = -16
if(number >= 0) {
    if(number == 0 ) {
        print("Number is ZERO")
    }
    else {
        print("Number is POSITIVE")
    }
}
else {
    print("Number is NEGATIVE")
}
//swich
let student = "vishal"
switch(student) {
case "raj":
    print("Name is:\(student)")
case "parth":
    print("Name is:\(student)")
case "Vishal":
    print("Name is:\(student)")
default:
    print("Name Not Found")
}
//loop
var nameOfPerson = ["raj","nisha","deesha","vaibhav","anuj"]
for (i,value) in nameOfPerson.enumerated() {
    print(i,value)
}
for i in  nameOfPerson where i != "deesha"{
    print(i)
}
//for j in 1...5 {
//    print(j)
//}
//while
var r = 1
var k = 10
while r <= k {
    print(r)
    r += 1
}
repeat {
    print("reapeat while\(r)")
    r += 1
} while(r <= k)
//beak
for i in 1...10 {
    if (i == 4) {
        break
    }
    print(i)
}
//continue
for i in 1...10 {
    if (i == 6) {
        continue
    }
    print(i)
}
//unwrapping ??
var nameOfCollege: String?
nameOfCollege = "ABC"
print("College is:\(nameOfCollege ?? "ABC")")
//if let
if let college = nameOfCollege {
    print("College is:\(college)")
}
else {
    print("Nil")
}
//guard let
var doctorName: String?
doctorName = "abc"
func abc() {
    guard let doctor = doctorName else {
        return
        print("nil")
    }
    print("Not nil")
}
abc()
//Array
var subject = ["Maths","English","Gujrati"]
print(subject[1])
print(subject[0...1])
subject.append("Science")
print(subject)
subject.insert("Shanskrit", at: 0)
print(subject)
subject[3] = "physhics"
print(subject)
subject.remove(at: 3)
print(subject)
subject.removeLast()
print(subject)
subject.sort()
print(subject)
print(subject.count)
var accountDetails: [Any] = ["abc",8500,"asxs"]
print(accountDetails)
//set
var enrollmentNumber: Set<Int> = [1,2,3,4,5,6,7]
enrollmentNumber.insert(8)
print(enrollmentNumber)
var stu = enrollmentNumber.sorted()
print(stu)
var rollnumber: Set<Int> = [9,10,11,2]
print(rollnumber)
print("Unuion:",enrollmentNumber.union(rollnumber))
print("Intersection:",enrollmentNumber.intersection(rollnumber))
print("Subtraction:",enrollmentNumber.subtracting(rollnumber))
//dictionary
var nameAndEnrollment: [String:Int] = ["trt": 1,"qwe": 2,"dfg": 3,"api": 4]
print(nameAndEnrollment)
nameAndEnrollment["asz"] = 5
print(nameAndEnrollment)
var key = nameAndEnrollment.keys
print(key)
var value = nameAndEnrollment.values
print(value)
print(nameAndEnrollment["qwe"])
nameAndEnrollment.removeValue(forKey: "qwe")
print(nameAndEnrollment)
for (key,value) in nameAndEnrollment {
    print("\(key): \(value)")
}
//function
func addFunction(n1: Int,n2: Int) -> Int{
    let ans = n1 + n2
    return ans
}
addFunction(n1: 5, n2: 10)
//clouser
let bank: (String) -> ()
bank = { userName in
    print("name is:\(userName)")
}
bank("AB")

let addition: ((Int,Int) -> Int) = {(val1,val2) in
    return (val1 + val2)
}
print(addition(5,10))
//Class and Object
class Calculetor {
    var value1: Int = 0
    var value2: Int = 0
    func addition() {
        print("ans:\(value1 + value2) ")
    }
}
var calculator = Calculetor()
calculator.value1 = 1000
calculator.value2 = 8588
calculator.addition()
//Initializer
class Person {
    var personName: String
    var personAge: Int
    var personAddres: String
    init(name: String,age: Int,address: String) {
        personName = name
        personAge = age
        personAddres = address
    }
}
var person = Person(name: "raj", age: 20, address: "Ahmedabad")
print("Name:\(person.personName) Age:\(person.personAge) Address:\(person.personAddres)")
//enum
enum Subject: Int, CaseIterable {
    case maths = 01 ,english = 02,gujrati = 03
}
//var subjectOne: Subject
//subjectOne = Subject.gujrati
//print(subjectOne)
for i in Subject.allCases {
    print(i)
}
var subjectObj = Subject.gujrati
print(subjectObj.rawValue)
//structure
struct PersonInfo {
    var name: String?
    var mark: Int?
}
var perosnObj = PersonInfo()
perosnObj.mark = 90
print("Mark:\(perosnObj.mark)")
//Inheritance
class StudentOne {
    func display() {
        print("Student1 mark 99")
    }
}
class StudentTwo: StudentOne {
    
    override func display() {
        super.display()
        print("Student2 mark 90")
    }
}
var studenttwo = StudentTwo()
studenttwo.display()
//protocol
protocol Print {
    func printMe()
}
class ProtocolExample: Print {
    func printMe() {
        print("this is protocol Example")
    }
}
var protocolObj = ProtocolExample()
protocolObj.printMe()
//extension
extension ProtocolExample {
    func display() {
        print("this is extension Example")
    }
}
protocolObj.display()
//property obsever
class PeopertyObsever {
    var propValue: Int = 3 {
        willSet {
            print("old Value is:\(propValue)")
        }
        didSet {
            print("New Value is:\(propValue)")
        }
    }
}
var propertyObj = PeopertyObsever()
propertyObj.propValue = 9
//Error Handling
enum ErorrHandling: Error {
    case divideByZero
}
func divison(number1: Int , number2: Int) throws -> Float {
    var ansDivison: Float = 0
    if number2 == 0 {
        throw ErorrHandling.divideByZero
    }
    else {
        ansDivison = Float(number1) / Float(number2)
    }
    return ansDivison
}
do{
    let result = try divison(number1: 10, number2: 120)
    print(result)
}
catch ErorrHandling.divideByZero {
    print("can't DivideByZero number")
}
//subscript
struct subScript {
    var nameOfCar = ["Hyundai","Honda","Kia","Skoda","Toyota"]
    subscript(index: Int) -> String {
        return nameOfCar[index]
    }
}
let car = subScript()
print(car[3])
//Typecasing
let number1: Int = 1
if ((number1 as? String) != nil) {
    print ("Int")
}
let bom: Any = 10
if let obj = bom  as? Int {
    print(obj)
}
//filter


print(array.sorted(by: >))
print(array.sorted())
//array = array.filter{$0 % 2 == 0}
//print(array)
//array = array.filter({(val) -> Bool in return true})
//print(array)
//array = array.filter{return $0 % 2 == 0 }
array = array.filter{return $0.isMultiple(of: 2)}
print(array)
var arrOne = ["raj","prakash","ajstyle"]
let arrayFil = arrOne.filter{($0.contains("aj")) }
print(arrayFil)
//substring

//let strTwo = strMess.endIndex
//print(strTwo)
//let strFinal = strMess.firstIndex(of: "m")
//print(strFinal)
//substrring
class RangeOfString {
    var strMess = "this is a message"
    subscript (from: Int, to: Int) -> String {
        get {
            let startIndex = strMess.index(strMess.startIndex, offsetBy: from-1)
            let endIndex = strMess.index(strMess.startIndex, offsetBy: to)
            let range: Range<String.Index> = startIndex..<endIndex
            return String(strMess[range])
        }
    }
}
let objRange = RangeOfString()
print(objRange[4,9])
