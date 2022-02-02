import UIKit
enum xyz: String {
    case ca1 = "vishal"
    case ca2 = "raj"
    case ca3 = "jay"
}
var vai = xyz.ca2.rawValue
switch vai {
case xyz.ca1.rawValue :
    print("this is ca1")
case xyz.ca2.rawValue :
    print("this is ca2")
case xyz.ca3.rawValue :
    print("this ca3")
default:
    <#code#>
}
//Class
//1)Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
//class Swift {
//    var val1 : Int = 22
//    var val2 : String = "vishal"
//}
//
//var swift = Swift()
//print(swift.val1)
//print(swift.val2)
struct Phone{
var dic = ["vishal" : 72, "parth" : 63,"anuj" : 70 ,"jaydeep" : 63]
    subscript (key: String) -> Int {
        if let newdic = dic[key] {
            return newdic
        }
        else {
          return 0
        }
    }
}
let phone = Phone()
let phone1 = phone["parth"]
let phone2 = phone["raj"]
print(phone2)
