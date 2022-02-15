import UIKit

//default init and cutome init
struct Person {
    var name: String
    var age: Int
    var address: String
}
var person = Person(name: "Vishal", age: 21, address: "Bhavnagar") //swift automatcally create init
person.name
print(person)

//user define init
struct Person1 {
    var name1: String
    var age1: Int
    var address1: String
    
    init(name1: String,age1: Int,address1: String) {
        self.name1 = name1
        self.age1 = age1
        self.address1 = address1
    }
}
var person1 = Person1(name1: "Parth", age1: 21, address1: "Bhavnagar")
person1.address1

//class in init
class PesonDeatail {
    var name1: String
    var age1: Int
    var address1: String
    
    init(name1: String, age1: Int, address1: String) {
        self.name1 = name1
        self.age1 = age1
        self.address1 = address1
    }
}
var persondeatail = PesonDeatail(name1: "Jaydeep", age1: 22, address1: "Bhavnagr")
persondeatail.address1

//failable init
class pesonDeatail1 {
    var name12: String?
    var age12: Int
    var address12: String
    
    init?(name12: String,age12: Int,address12: String) {
        if (name12.isEmpty) {
            return nil
        }
        self.name12 = name12
        self.age12 = age12
        self.address12 = address12
        
    }
    
}
var persondeatail12 = pesonDeatail1(name12: "", age12: 17, address12: "Bhavnagr")
print(persondeatail12?.name12)

//override
class Class1 {
    func FullName() {
        print("this is class1")
    }
}
class Class2: Class1 {
    override func FullName() {
        super.FullName()
        print("this is class2")
    }
}
let s2 = Class2()
s2.FullName()

//optional chaing
var firstname: String?
firstname = "vishal"
if let name = firstname {
    print("FirstName is \(name)")
}
else {
    print("No FirstName ")
}

//Error Handling
enum DivisionError: Error {
    case dividebyzero
}
func errorhandling(num1: Int,num2: Int) throws {
    if (num2 == 0) {
        throw DivisionError.dividebyzero
    }
    else {
        let num3 = num1 / num2
        print(num3)
    }
}
do {
    try errorhandling(num1: 25, num2: 0)
}
catch DivisionError.dividebyzero {
    print("Dividebyzero Error")
}

//Type Casting
class Department {
    var Sname: String
    init(Sname: String) {
        self.Sname = Sname
    }
}
class IT: Department {
}
class Mechanical: Department {
}

var depart = [IT(Sname: "IT Department"), Mechanical(Sname: "MEchanical")]
for i in depart {
    if i is IT {
        print("\(i.Sname)")
    }
    else if i is Mechanical {
        print("\(i.Sname)")
    }
}
for j in depart {
    if let newit = j as? IT {
        print("\(j.Sname)")
    }
    else if let newmech = j as? Mechanical {
        print("\(j.Sname)")
    }
}

//Any -> Diffrent data type is contain
var anyexample = [Any] ()
anyexample.append("vishal")
anyexample.append(21)
anyexample.append(70.3654165)
for example in anyexample {
    switch example {
    case let  valint as Int :
        print("integer value : \(valint)")
    case let valstr as String :
        print("string value : \(valstr)")
    case let valdouble as Double :
        print("double value :\(valdouble)")
    default :
        print("Fine")
    }
}

//AnyOnject
class Employee {
    var empname: String
    init (empname: String) {
        self.empname = empname
    }
}
class Empsalary: Employee {
    var empsalary: Int
    init(empname: String,empsalary: Int) {
        self.empsalary = empsalary
        super.init(empname: empname)
    }
}
class EmpDepartment: Employee {
    var empdepartment: String
    init(empname: String, empdepartment: String) {
        self.empdepartment = empdepartment
        super.init(empname: empname)
    }
}
var employee: [AnyObject] = [
    Empsalary(empname: "parth", empsalary: 20000),
    EmpDepartment(empname: "parth", empdepartment: "IT"),
    Empsalary(empname: "vaibhav", empsalary: 30000),
    EmpDepartment(empname: "vaibhav", empdepartment: "Machanical")
]
print(employee)
for item in employee {
    if let dept = item as? EmpDepartment {
        print("Employee Name :\(dept.empname) , & Department : \(dept.empdepartment)")
    }
    else if let salary = item as? Empsalary {
        print("Employee Name :\(salary.empname) & salary :  \(salary.empsalary)")
    }
}

//NestedType
class Superclass {
    var xyz = baseclass()
    class baseclass {
        var add1 : Int = 5
        var add2 : Int = 10
        func add() -> String {
            return "\(self.add1 + self.add2 )"
        }
    }
}
var object1 = Superclass()
print(object1.xyz.add())

//Inheritance
class Display {
    func display1() {
        print("This is Display1 ")
    }
}
class Display2 : Display {
    override func display1() {
        super.display1()
        let v1: Int = 10,v2: Int = 2
        let  v3 = v1 + v2
        print("Ans is : \(v3)")
    }
}
var object2 = Display2()
print(object2.display1())

//extension
extension Int {
    var addition : Int {
        return self + 20
    }
    var subtraction : Int {
        return self - 20
    }
    var multiplication : Int {
        return self * 20
    }
    var division : Int {
        return self / 20
    }
}
let add = 2.addition
print("adition is:\(add)")
let sub = 60.subtraction
print("subtraction is:\(sub)")
let mul = 65.multiplication
print("multiplication is:\(mul)")
let div = 5.division
print("division is:\(div)")
//with class
class PersonId {
    var str :String = ""
    var age : Int = 0
    func display3 () {
        print(str,age)
    }
}
var personid = PersonId();
personid.str = "raj"
personid.age = 22
personid.display3()

//MARK:- Extension
extension PersonId {
    func voter() -> Bool {
        if (age >= 18) {
            return true
        }
        else {
            return false
        }
    }
}
print(personid.voter())

//MARK:- Protocol and delegate
protocol Name {
    var StudentName: String { get set }
    var StudentAge: Int { get }
    func StudentDisplay() -> String
}
class StudentD : Name {
    var StudentName: String = "Vishal"
    var StudentAge: Int = 21
    func StudentDisplay() -> String {
        return "Name is :\(StudentName),Age is:"
    }
}
var objpro = StudentD()
print(objpro.StudentDisplay())
