import UIKit

var name = "vishal"
print(name)

//var in we can change tje value
var a = 21 //require space after assigniung the value other wise give the error
print(a)
a=22
print(a)

//let constant value
let b = 25
print(b)
//b = 32 error return
//print(b)

var c:Int = 24
print(c)
print("The value of c is=",c) // (,) concatination in used
var d:String = "this is string"
print(d)
var e:  Character = "V"
print(e)
let h: Bool = true
print(h)
print("e=\(e) and h=\(h)")
//binary value display
let binary = 0b0111101
print(binary)
//typealias ->create a new name for an existing type.
typealias vishal = Int
var age : vishal = 21
print(age)

//type saftey
var saftey = 25
saftey = 60
print(saftey)

//if,if else,if else if else
var n = 20
if(n == 2){
    print(true)
}
else if(n >= 100){
    print("value is greater value")
}
else{
    print("less value\n")
    
}

//LOOP
print("for loop")
for i in 1...10
{
    print("\(i) * 12 =\(i * 12)")
}

//while
print("while loop")
var v = 1
var s = 10
while(v <= s){
    print("\(v) * 12=\(v * 12)")
    v += 1;
}
repeat{ // first it print after it check the condition
    print("\(v) * 12=\(v * 12)")
    v += 1;
}while(v <= s)

//function
func method1(sname: String, age: Int){
    print("name is:\(sname) and age is:\(age)")
}
method1(sname: "vishal",age: 21)

func method2() ->Int
{
    return 30
}
print(method2())

//Array
var arr=[1,65,98,0,45,68]
print(arr)
arr[3] = 55 //change the value of array
print(arr.count)
print(arr.remove(at: 2)) //98 is remove

// Dictionary skeep


//set ->can't store the duplicate value twice unlike array
//set must be hashable
var setvalue : Set=[2,5,9,0,50,40,9,9]
var setvalue1 : Set=[12,15,19,10,150,140,19,9]
print(setvalue)
print(setvalue.insert(100))
print(setvalue.union(setvalue1))
print(setvalue.subtracting(setvalue1))

//Closure ->same as function
let fun1 = {
   print("Hi am Closure")
}
fun1()

