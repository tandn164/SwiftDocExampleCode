import UIKit
//Unit 1: The Basic
//-------------Tuples---------------
let http404=(404,"Not found")
let (code,msg)=http404
print("code is \(http404.0), message is \(http404.1)")
print("code is \(code), message is \(msg)")
let (justcode,_)=http404
print("only need code: \(justcode)")
let http201=(code: 210, msg1: "hihi")
print("code is \(http201.code) , message is \(http201.msg1)")
//----------------------------------
//-------------Optional-------------
let Number="123"
let convertedNumber = Int(Number)
print(convertedNumber!)
//Automatic Unwrapping
var mystring:String!
if mystring != nil {
   print(mystring!)
}else {
   print("myString has nil value")
}
//Nil coalescing
var yearOfBirth: Int? = 20
print("yearOfBirth is \( yearOfBirth ?? 21 )")
//Optional Binding
var myString:String?
if let yourString = myString {
   print("Your string has - \(yourString)") //nếu myString có giá trị thì gán cho hằng yourString giá trị đấy
}else {
   print("Your string does not have a value")
}
//Optional Chaining
class Student {
    var name: String?
    var age: Int?
}
func findStudent(StudentID: String) -> Student?{
    if StudentID == "123"
    {
        let s: Student = Student()
        s.name="Tan"
        s.age=21
        return s
    }else{
        let s: Student = Student()
        s.name="Thu"
        s.age=22
        return s
    }
    //return nil
}
if let age1 = findStudent(StudentID: "123")?.age{
    print(age1)
}
//Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
var implicitString: String = assumedString // no need for an exclamation mark
//Dùng khác non-optional ở chỗ so sánh được voi optional
//----------------------------------
