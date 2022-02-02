import UIKit

var name = "vishal"
print(name)

//var in we can change the value
var a = 21 //require space after assigniung the value other wise give the error
print(a)
a = 22
print(a)

//let constant value
let b = 25
print(b)
//b = 32 error return
//print(b)

var c: Int = 24
print(c)
print("The value of c is=",c) // (,) concatination in used
var d: String = "this is string"
print(d)
var e: Character? = "V"
e = nil
print(e)
let h: Bool = true
print(h)
print("e=\(e) and h=\(h)")
//binary value display
let binary = 0b0111101
print(binary)
//typealias ->create a new name for an existing type.
typealias vishal = Int
var age: vishal = 21
print(age)

//type saftey
var saftey = 25
saftey = 60
print(saftey)

//if,if else,if else if else
var n = 20
if(n == 2) {
    print(true)
}
else if(n >= 100){
    print("value is greater value")
}
else {
    print("less value\n")
    
}

//LOOP
print("for loop")
for i in 1...10 {
    print("\(i) * 12 = \(i * 12)")
}

//while
print("while loop")
var v = 1
var s = 10
while(v <= s) {
    print("\(v) * 12= \(v * 12)")
    v += 1;
}
repeat { // first it print after it check the condition
    print("\(v) * 12= \(v * 12)")
    v += 1;
} while(v <= s)

//function
func method1(sname: String?, age: Int) {
    print("name is:\(sname ?? "") and age is:\(age)")
}
method1(sname: nil,age: 21)

func method2() -> Int {
    return 30
}
print(method2())

//Array
var arr = [1,65,98,0,45,68]
print(arr)
arr[3] = 55 //change the value of array
print(arr.count)
print(arr.remove(at: 2)) //98 is remove

//set ->can't store the duplicate value twice unlike array
//set must be hashable
var setvalue: Set=[2,5,9,0,50,40,9,9]
var setvalue1: Set=[12,15,19,10,150,140,19,9]
print(setvalue)
print(setvalue.insert(100))
print(setvalue.union(setvalue1))
print(setvalue.subtracting(setvalue1))

//Closure ->same as function and task finish give notification
let fun1 = {
    print("Hi am Closure")
}
fun1()
//parameter
let fun2 :(String) -> () =
{
    app in print("hello \(app)")
}
fun2("IOS")

// Dictionary -> key and value
let dic1: [String:Int] = [:] //empty
print(dic1)
let dic: [String:Int] = ["Parth":1,"Vishal":2,"Anuj":25,"Raj":20]
let dic2: [Int:String] = [1:"Parth",2:"Vishal",25:"Anuj",20:"Raj"]
print(dic)
print(dic2)
print(dic.count)
print(dic2.isEmpty)
print(dic["Anuj"])
for(k,v) in dic {
    print("key=\(k) value=\(v)")
}

//Enumeration -> user-defined data type
enum gendr {
    case male,female,other
}
var id = gendr.female
id = .female
switch(id) {
case .male:
    print("Male")
case .female:
    print("Female")
case .other:
    print("Other")
}

//structure -> easy way to change the value
struct mark {
    var m1: Int
    var m2: Int
    var m3: Int
}
let parth = mark(m1: 20, m2: 19, m3: 15)
let anuj = mark(m1: 20, m2: 19, m3: 15)
var ch = parth
ch.m2 = 16
print(parth)
print(ch)

//class
class employee {
    var salary: Int
    init(salary: Int) { //constructor
        self.salary = salary
    }
    func salaryEm(){
        print("salary is:\(salary)")
    }
}
var Em = employee(salary: 30000)
Em.salaryEm()

//lazy properties -> run time access memory
class mes1 {
    lazy var mes: String = "lazy example"
    func sam1() {
        print(mes)
    }
}
var ob1 = mes1()
print(ob1.mes)

//Methods
//Instance method
class Instance {
    func instancemethod() {
        print("Instance call")
    }
}
var instance = Instance()
instance.instancemethod() // instance call
// self properties
class empl {
    var salary : Int
    init(salary : Int) { //constructor
        self.salary = salary
    }
    func salaryEm() {
        print("salary is:\(salary)")
    }
}
var em = empl(salary: 30000)
em.salaryEm()

//internal and external parameter
func mul(x a:Int, y b:Int) -> Int {
    let res:Int = a * b
    return res
}
var re:Int = mul(x: 15, y: 2)
print(re)

//subscript -> without function call retrive the value
class Name {
    var name = ["vishal","jay","parth","Anuj","Vinayak"]
    subscript(index : Int) -> String {
        get {
            return name[index]
        }
        set(setnew){
            self.name[index] = setnew
        }
    }
}
var nameob = Name()
print(nameob.name)
nameob[2] = "Ram"
print(nameob[2])
print(nameob.name)

//if let
var name1 : String?
//name1 =
if let nameFound = name1 {
    print("name : \(nameFound)")
}
else{
    print("Nil")
}
//guard let
for i in 1...5 {
    guard i.isMultiple(of: 2) else {
        continue
    }
    print(i)
}
//inheritance
class calc {
    let a: Int = 10
    let b: Int = 20
}
class add : calc {
    func addition(){
        let result = a + b
        print("result :\(result)")
    }
}
var ob12 = add()
ob12.addition()
//example 2
class Display {
    func display() {
        print("\n this is Display ")
    }
}
class Display1: Display {
    override func display() {
        super.display()
        print("this is display1")
    }
    
}
var dis = Display1()
dis.display()
//Error Handling
enum Name1 : Error {
    case name
}
class sname {
    var name : String
    init(name: String) throws {
        if( name == "") {
            throw Name1.name
        }
        else {
            self.name = name
            print("true")
        }
    }
}
do {
    var obsname = try sname(name: "vishal")
}
catch Name1.name {
    print("Enter Name")
}
