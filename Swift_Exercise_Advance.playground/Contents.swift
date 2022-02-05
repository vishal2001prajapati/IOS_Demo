import UIKit
import Foundation
import Darwin

//Class
//1)Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
class Swift {
    var val1: Int = 22
    var val2: String = "vishal"
}
var swift = Swift()
print(swift.val1)
print(swift.val2)

//2)Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
class Swift1 {
    var name: String
    var department: String
    var college: String
    init(name1: String,college1: String) {
        name = name1
        college = college1
        department = " "
    }
    init(name2: String , department1: String) {
        name = name2
        department = department1
        college = " "
    }
}
var obj = Swift1(name2: "parth", department1: "IT")
print("Name is :\(obj.name) and Department is :\(obj.department)")
var obj1 = Swift1(name1: "vishal", college1: "vgec")
print("Name is :\(obj1.name) and Department is :\(obj1.college)")

//3)Create a swift class without initializers and access (write, read) its properties using instance of class.
class Swift3 {
    var sname: String = "Vishal"
    var age: Int = 21
}
var swift3 = Swift3()
print(swift3.sname)
print(swift3.age)
swift3.sname = "parth"
swift3.age = 21
print("\(swift3.sname),\(swift3.age)")

//4) Create a swift class which is having code to return square of given number and access this code using class instance.
class Swift4 {
    var square: Int
    init(squ: Int) {
        self.square = squ
    }
    func squareM() -> Int {
        return square * square
    }
}
var swift4 = Swift4(squ: 69)
print(swift4.squareM())

//5)Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
class Swift5 {
    var ans: Int = 0
}
class add: Swift5 {
    var val1: Int = 22
    var val2: Int = 5
    func display() {
        ans = val1 + val2
        print(ans)
    }
}
class mul: Swift5 {
    var val3 = 5
    var val4 = 6
    func display1() {
        ans = val3 * val4
        print(ans)
    }
}
var objadd = add()
var objmul = mul()
print("Add is :\(objadd.display())")
print("Mul is : \(objmul.display1())")

//6)Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.
class Swift6 {
    func ans() {
        print("this is a swift6 class")
    }
}
class Subswift6: Swift6 {
    override func ans()
    {
        super.ans()
        print("this is a Subswift6 class")
    }
}
var subswift6 = Subswift6()
print(subswift6.ans())

//7)Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
//example:  let instance = Example(value: 5)
//    let result = instance.doPower(power: 3)
//then it should return 5's 3 power (125)
class Example {
    var power: Double
    init(power: Double) {
        self.power = power
    }
    func doPower(power1 : Double) -> Double {
        let a = pow(power, power1)
        return a
    }
}
var example = Example(power: 5)
var result = example.doPower(power1: 3)
print(result)

//8)Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
class Vehicles {
    var seater: Int {
        return 2
    }
    var color: String = "red"
    func deatails() {
        print("this is vehicals class")
    }
}
class Bike: Vehicles {
    override var seater: Int {
        return 3
    }
    override func deatails() {
        super.deatails()
        print("This is Bike")
    }
    func display4() {
        print("This is display4")
    }
    
}
class Car : Vehicles {
    override var seater: Int {
        return 4
    }
    override func deatails() {
        super.deatails()
        print("this is car")
    }
}
var objbike = Bike()
var objcar = Car()
objbike.display4()
objbike.deatails()
objbike.seater

//9) Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
//  Person1.greet() // This should print “Hello Joe”
class Person {
    var pername: String
    init(pername: String) {
        self.pername = pername
    }
    func greet() {
        print("Hello \(pername)")
    }
}
var person = Person(pername: "Joe")
person.greet()

//10)Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
// Consider ‘a’ as string property of example class.
class Swift10 {
    var a: String
    init(a: String){
        self.a = a
    }
}
let example1 = Swift10(a:"Helo")
example1.a = "Hello"
let exampl2 = example1
print(exampl2.a)
exampl2.a = "Hi"
print(example1.a)
print(exampl2.a)

//Structure
//1) Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
struct Work {
    var worklocation: String = "Ahmedabad"
    var workhours: Float = 8.0
    var projname: [String] = []
    func comwork() ->[String] {
        return projname
    }
}
var work = Work(worklocation: "Ahmedabad", workhours: 8.0, projname: ["xyz","abc"])
print("\(work.projname)")

//2)Create a structure example which demonstrates use of initializer in structures.
struct Person2 {
    var pername: String
    var perage: Int
    init(pername: String,perage: Int) {
        self.pername = pername
        self.perage = perage
    }
}
var person2 = Person2(pername: "Hardik", perage: 22)
print(person2.pername)

//3) Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.
struct Struct3 {
    var sum1: Int
    var sum2: Int
    var result1: Int
    init(sum1: Int = 1,sum2: Int = 2) {
        self.sum1 = sum1
        self.sum2 = sum2
        self.result1 = 0
    }
}
var struct3 = Struct3()
print("\(struct3.result1)")

//4)Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//Output: even numbers are: [6, 8, 10, 8, 12]
//Odd numbers are: [1, 3, 5, 9, 7]
struct struct4 {
    var array : [Int] = []
    var evenarray: [Int] = []
    var oddarray: [Int] = []
    init(array1 : [Int] = []) {
        array = array1
        for n in array {
            if(n % 2 == 0) {
                evenarray += [n]
            }
            else {
                oddarray += [n]
            }
        }
        print("even number are:\(evenarray)")
        print("odd number are:\(oddarray)")
    }
}
var str4 = struct4(array1: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])

//5) Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
// Output be like: Name: Joe, Gender: Male, Age: 27
//Name: Harry, Gender: Male, Age: 21
struct Person5 {
    var personName: String
    var personAge: Int
    var gender: String
    init(personName1: String,gender1: String,personAge1: Int) {
        personName = personName1
        personAge = personAge1
        gender = gender1
    }
}
var personInfo: [Person5] = []
var person5 = Person5(personName1: "Raj", gender1: "Male",personAge1: 20)
var person51 = Person5(personName1: "Rajkumar", gender1: "Male",personAge1: 20)
personInfo.append(person5)
personInfo.append(person51)
for k in personInfo {
    print("Name:\(k.personName),Gender:\(k.gender),Age:\(k.personAge)")
}

//6) Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
struct Example6 {
    var b: String
    init(b1: String) {
        self.b = b1
    }
}
var example6 = Example6(b1: "welcome")
example6.b = "Hello"
print(example6.b)
var example7 = example6
//print(example7.b)
example7.b = "Hi"
print(example6.b)
print(example7.b)

//7)Try to figure out basic difference between class and structures and give a demo for same.
//class is a reference type & structure is a value type
struct Book {
    var bookPrice: Int
    var bookAuthor: String
}
let book = Book(bookPrice: 120, bookAuthor: "xyz")
print(book.bookAuthor)

//class example
class Book1 {
    var bookPage: Int = 520
}
var book1 = Book1()
var book2 = book1
book2.bookPage = 512
print("\(book1.bookPage)")
print("\(book2.bookPage)")

//Enumerations
//1) Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
//Example. It should return Monday or mon if I pass parameter 1 for get day name.
enum Enum1 {
    case one , two , three, four, five, six,seven
    var srtored: String {
        switch self {
        case .one:
            print("Monday")
        case .two:
            print("Tuesday")
        case .three:
            print("Wensday")
        case .four:
            print("Thursday")
        case .five:
            print("Friday")
        case .six:
            print("Saturday")
        case .seven:
            print("Sunday")
        }
        return " "
    }
    var srtored1: String {
        switch self {
        case .one:
            print("Mon")
        case .two:
            print("Tues")
        case .three:
            print("Wens")
        case .four:
            print("Thurs")
        case .five:
            print("Fri")
        case .six:
            print("Satur")
        case .seven:
            print("Sun")
        }
        return " "
    }
    
}
print(Enum1.six.srtored1)
print(Enum1.six.srtored)

//2)Create one enumeration program to return number of days in a month.
enum Months {
    case Jan,Feb,March,April,May,June,July,Aug,Sep,Oct,Nov,Dec
}
var months = Months.Feb
switch (months) {
case .Jan , .March ,.May , .July ,.Aug , .Oct ,.Dec:
    print("31")
case .April,.June,.Sep,.Nov:
    print("30")
case .Feb:
    print("if year is leap year then 29 days otherwise 28 days")
}

//3)Write a swift program using enumerations to demonstrate Int enums.
enum Enum3: Int {
    case no1 = 45
    case no2 = 46
}
var enum3 = Enum3.no1.rawValue
print(enum3)

//4)Write a swift program to demonstrate string type enum.
enum Enum4: String {
    case valu1 = "hello"
    case valu2 = "Hi"
}
var enum4 = Enum4.valu1.rawValue
print(enum4)

//5)Write a swift program for enum with raw values.
enum Enum5: String {
    case valu3 = "hello"
    case valu4 = "Hi"
}
var enum5 = Enum5.valu4.rawValue
print(enum5)

//6) Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).
// with CaseIterable
enum EnumCase: String,CaseIterable {
    case valu5 = "hello"
    case valu6 = "Hi"
}
print(EnumCase.valu6.rawValue)
for l in EnumCase.allCases {
    print(l.rawValue)
}
//without CaseIterable
enum Enum6: String {
    case valu5 = "hello"
    case valu6 = "Hi"
    static var enumArray = [Enum6.valu5,Enum6.valu6]
}
for l in Enum6.enumArray {
    print(l.rawValue)
}
//7) Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).
enum Student {
    case studentName(String)
    case studentMark(Int)
    case studentHobbie(String)
}
var student = Student.studentHobbie("Play Ctricket")
print(student)
var mark = Student.studentMark(99)
print(mark)

//8)Create an enum with its rawValues of type String and show usage of case to print value of case.
enum Enum8: String {
    case statment1 = "this is statment1"
    case statment2 = "this is statment2"
    
}
print(Enum8.statment1)
print(Enum8.statment1.rawValue)

//Properties,Subscripts Methods & Inheritance
//1)Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
//Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error.
class Demo {
    private (set) var str: String
    init(str: String){
        self.str = str
    }
}
var demo = Demo(str: "xyz")
//TODO:- LEarnig Perpose
//demo.str = "ABC" //constant and error return
print(demo.str)

//2)  Create a swift program to demonstrate usage of computed properties using getter and setter.
class EmpSalary {
    var salary: Int = 600000
    var salrySecond: Int {
        get {
            return salary / 12
        }
        set(newSalary) {
            return salary = newSalary / 12
        }
    }
}
var empsalary = EmpSalary()
print(empsalary.salrySecond)
empsalary.salrySecond = 700000
print(empsalary.salary)

//3)  Create a swift program to show usage of stored properties.
struct Store {
    var employName: String = "Raj"
    let employAge: Int = 25
}
var store = Store()
print(store.employName)

//4)  Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
class PrivatePro {
    private var studName: String
    func privatefun() {
        print("Hi....")
    }
    init(studName: String) {
        self.studName = studName
    }
}
var privatepro = PrivatePro(studName: "vishal")
print(privatepro)
print(privatepro.privatefun())

//6)  Create one example of usage of willSet and didSet.
class Check {
    var amount: Int = 0 {
        willSet(newvalue) {
            print("New value is:\(newvalue)")
        }
        didSet {
            if amount > oldValue {
                print("Amount:\(amount)")
                print("Old amount:\(oldValue)")
                print("New added amount:\(amount + oldValue)")
            }
        }
    }
    
}
var check = Check()
print("Amount:\(check.amount)")
check.amount = 1850
check.amount = 10850

//7)  Create one lazy stored property in a class and show usage of it.
class Mess {
    lazy var mes: String = "vishal"
    func sam1() {
        print(mes)
    }
}
var ob1 = Mess()
print(ob1.mes)
//8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
class Person8 {
    var personName: String
    var personOccupation: String
    init(personName: String,personOccupation: String) {
        self.personName = personName
        self.personOccupation = personOccupation
    }
}
class Student8: Person8 {
    var college: String
    init(personName: String,personOccupation: String,college: String) {
        self.college = college
        super.init(personName: personName, personOccupation: personOccupation)
    }
}
class Employee8:Person8 {
    var compnay: String
    init(personName: String,personOccupation: String,compnay: String) {
        self.compnay = compnay
        //        var compantCost = super.college
        super.init(personName: personName, personOccupation: personOccupation)
    }
}
var employee8 = Employee8(personName: "Parth", personOccupation: "Soft.Eng.", compnay: "xyz")
var student8 = Student8(personName: "Vaibhav", personOccupation: "Student", college: "SS")
print(employee8.compnay)
print(student8.college)
//9)  Create one structure to show usage of mutating function in swift.
struct Mutating {
    var nameOfstudent: String = "Pradip"
    var ageOfstudent: Int = 22
    var collegeName: String = "VGEC"
    mutating func studentDetail(name: String,age:Int,college: String) {
        nameOfstudent = name
        ageOfstudent = age
        collegeName = college
        print(nameOfstudent,ageOfstudent,collegeName)
    }
}
var mute = Mutating()
mute.studentDetail(name: "Vinayak", age: 21, college: "VGEC")

//10)  Create one class inheritance demo to show usage of method overriding.
class Display {
    func display() {
        print("this is Display ")
    }
}
class Display1: Display {
    override func display() {
        super.display()
        print("This is display1")
    }
    
}
var dis = Display1()
dis.display()

//11) Create one swift class to show usage of type methods.
class Sum {
    var number1 = 5
    var number2 = 10
    func addition() -> Int {
        return number1 + number2
    }
}
var sum = Sum()
sum.addition()

//12) Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)
class Display12 {
    func display() {
        print("this is Display ")
    }
    static func display12 () {
        print("this is static function")
    }
}
class Display10: Display12 {
    override func display() {
        super.display()
        print("This is display1")
    }
    //TODO:- Learning perpose
    //    override func display12() { //return the error
    //        print("this is not call")
    //    }
    
}
var dis1 = Display12()
dis1.display()

//13)Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.
//Output: WeekDays.subscript(day: 1) // will return Sunday Note: Handle invalid input.
class WeekDays {
    var days = ["Monday","Tuesday","Wensday","Thusday","Friday","Saturday","Sunday"]
    subscript(Index: Int) -> String {
        get {
            if(Index > days.count && Index < 0) {
                return "Not Available"
            }
            else {
                return days[Index]
            }
        }
    }
}
var weekdays = WeekDays()
print(weekdays[1])

//14)  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.
class FindCharacter {
    var message = " "
    init(message: String) {
        self.message = message
    }
    subscript(Index: Int) -> Character {
        let char = message.index(message.startIndex, offsetBy: Index)
        return message[char]
    }
}
var findchar = FindCharacter(message: "HelloWorld")
print("Character is:\(findchar[6])")

//15) Create one swift subscript program which takes range as input and returns the string between the ranges.
class Range {
    var str1: String
    init(str1: String) {
        self.str1 = str1
    }
    subscript(startIndex: Int, endIndex: Int) -> String {
        let startIndex = str1.index(str1.startIndex, offsetBy: startIndex)
        let endIndex = str1.index(str1.endIndex, offsetBy: -endIndex)
        let range = startIndex..<endIndex
        let mySubstring = str1[range]
        return String(mySubstring)
    }
}
var range1 = Range(str1: "xyaabz")
print(range1[2,2])

//16)I have one integer array and create one function which takes range as input and returns all elements between the range.
class RangeFun {
    var arrayOfRange =  [1,2,3,4,5,6,7,8,9,10]
    subscript(startIndex: Int,endIndex: Int) -> [Int] {
        get {
            let range = arrayOfRange[startIndex...endIndex]
            return Array(range)
        }
    }
}
var rangfun = RangeFun()
print(rangfun[2,6])

//17) I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.
class SubscriptDictExample {
    var dictionary = [1: "Anuj", 2: "Parth", 3: "Hardey"]
    subscript (Index: Int) -> String? {
        if let value = dictionary[Index] {
            return value
        }
        else {
            return nil
        }
    }
}
var subobj = SubscriptDictExample()
var inputKey = 2
if let ansValue = subobj[inputKey] {
    print("Key:\(inputKey),Value:\(ansValue)")
}
else {
    print("Cannot find the key")
}

//18)Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.
class PersonInform{
    var personName: String
    var personBday: Int
    var personAge: Int
    var arrayinfor: [PersonInform] = [PersonInform(personName: "parth", personAge: 21, personBday: 08-03-2001),PersonInform(personName: "vinayak", personAge: 21, personBday: 14-10-2001)]
    init(personName:String = "",personAge:Int = 0,personBday: Int = 0) {
        self.personName = personName
        self.personAge = personAge
        self.personBday = personBday
    }
    subscript (input: String)-> (String,Int,Int) {
        get{
            for item in arrayinfor {
                if input == item.personName {
                    return (personName,personAge,personBday)
                }else{
                    
                }
                
            }
            return ("No Name",0,0)
        }
    }
}
var personinfo = PersonInform()
print("\(personinfo["vinayak"])")

//19) Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer.
class Song {
    var singer: String
    var composer: String
    init(singer: String,composer:String) {
        self.singer = singer
        self.composer = composer
    }
}
class HipHop: Song {
    func hiphop() {
        super.singer
        super.composer
    }
}
class Classical: Song {
    func classical() {
        super.singer
        super.composer
    }
}
var hiphopobj = HipHop(singer: "Emiway Bantai", composer: "mikasingh")
var classicalobj = Classical(singer: "Lata Mangeshakar", composer: "A.R.Rahman")
print(hiphopobj.composer)
print(classicalobj.singer)
//20)  Create a swift class with properties which can be read-write outside of class.
class ReadWrite {
    var sname: String = "Vishal"
    var age: Int = 21
}
var readwrite = ReadWrite()
print(readwrite.sname)
print(readwrite.age)
readwrite.sname = "parth"
readwrite.age = 21
print("\(readwrite.sname) , \(readwrite.age)")

//Error Handling
//1)Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
enum Password: Error {
    case passIsShort,passIsEmpty
}
class Setpassword {
    func pass(password: String) throws -> Bool {
        guard   password.count > 0 else {
            throw Password.passIsEmpty
        }
        guard password.count >= 8 else {
            throw Password.passIsShort
        }
        return true
    }
}
var setpass = Setpassword()
var passwordIs = "vishal"
do {
    try setpass.pass(password: passwordIs)
    print("Perfect Password")
} catch Password.passIsShort {
    print("Please enter maximum 8 digit")
}
catch Password.passIsEmpty{
    print("Please enter the password")
}

//2)Create a program for shopping cart. If desired quantity for an item is not available, throw exception.
enum StockError: Error {
    case stockNotAvailable
}
class ShoppingCart {
    var itemQuantity = 5
    func buyItem(quantity: Int) throws {
        guard quantity <= itemQuantity else {
            throw StockError.stockNotAvailable
        }
        itemQuantity -= quantity
    }
}
var myShoppingCart = ShoppingCart()
var buyQuantity = 10
do {
    try myShoppingCart.buyItem(quantity: buyQuantity)
    print("Succesfully buy \(buyQuantity)")
} catch StockError.stockNotAvailable {
    print("item is not available")
}

//Extension
//Create following string manipulation functions using string extensions:
//Add a character in a string at 5th position
//Replace one character with other in a string
//Remove white spaces from string
//Get number of words in a string
extension String {
    func getFifthIndex() -> String {
        let charArray = [Character](self)
        return String(charArray[5])
    }
    func changeIndex(index: Int, newChar: Character) -> String {
        var charArray = [Character](self)
        charArray[index - 1] = newChar
        return String(charArray)
    }
    func removeSpaces() -> String {
        let charArray = [Character](self)
        var finalString = ""
        for char in charArray {
            if char != " " {
                finalString += String(char)
            }
        }
        return finalString
    }
    func getWord() -> Int {
        let stringArray = self.components(separatedBy: " ")
        return stringArray.count
    }
}
var firstString = "VishalPrajapati"
print("Getting 5th character of: \(firstString.getFifthIndex())")
print("Replacing 3rd index character: \(firstString.changeIndex(index: 3, newChar: "n"))")
var secondString = "vis hal praja pati"
print("Removing spaces from '\(secondString)': \(secondString.removeSpaces())")
var thirdString = "This is a new string"
print("Number of words is: \(thirdString.getWord())")
