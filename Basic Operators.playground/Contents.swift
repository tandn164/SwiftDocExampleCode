import UIKit
//-----------------Nil-coalescing operator--------------------
let color = "red"
var namecolor : String?
var color1 = namecolor ?? color // ?? is Nil-coalescing operator
var color2 = namecolor != nil ? namecolor!:color
print(color1)
print(color2) // cách khai báo color1 tương đương với cách khai báo color2
//---------------------Range operator--------------------------
for i in 1...5{
    print(i)
}
//----------------Half-open range operator---------------------
var n = 10
for i in 2..<n-2{
    print(i)
}
//-------------------One-sided ranges--------------------------
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for name in names[2...] {
    print(name)
}
for name in names[...2] {
    print(name)
}
let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
//-------------------------------------------------------------

