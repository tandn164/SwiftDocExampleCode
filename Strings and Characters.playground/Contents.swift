import UIKit
//--------------Multiline String Literals--------------
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print(quotation)
let softWrappedQuotation = """
            The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

            "Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappedQuotation)
//------------Extended String Delimiters---------------
let str = #"abc\ndef"#
print(str)
let str1 = "abc\ndef"
print(str1)
let str2 = #"abc\#ndef"#
print(str2)
let str3 = ##"abc\##ndef"##
print(str3)
let str4 = ##"abc\#ndef"##
print(str4)
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
print(threeMoreDoubleQuotationMarks)
//------------------Empty String-----------------------
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty && anotherEmptyString.isEmpty{
    print("both string is empty")
}
//---------------------Character-----------------------
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
var catString = String(catCharacters)
print(catString)
//---------Concatenating Strings and Characters--------
let exclamationMark: Character = "!"
catString.append(exclamationMark)
print(catString)
//-----------------String Interpolation----------------
let a = 3
print("2 * \(a) = \(2*3)")
print(#"2 * \(a) = \(2*3()"#)
print(#"2 * \#(a) = \#(2*3)"#)
//----------------Character count----------------------
let unusualMenagerie = "🐨,🐌,🐧,🐪"
print(unusualMenagerie.count)
//-------------------String Indices--------------------
let Thu = "Thu ngu ngoc"
print(Thu[Thu.startIndex])
print(Thu[Thu.index(before: Thu.endIndex)])
print(Thu[Thu.index(after: Thu.startIndex)])
let index = Thu.index(Thu.startIndex, offsetBy: 2)
let index1 = Thu.index(Thu.endIndex, offsetBy: -2)
let index2 = Thu.index(Thu.startIndex, offsetBy: 77, limitedBy: Thu.endIndex)
print(index2)
print(Thu[index1])
print(Thu[index])
for i in Thu.indices{
    print("\(Thu[i])",terminator: "")
}
print("")
//-------------Inserting and Removing------------------
var welcome = "Hello, welcome"
welcome.insert("!",at: welcome.endIndex)
print(welcome)
welcome.insert(contentsOf: " Thu", at: welcome.index(before: welcome.endIndex))
print(welcome)
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)
let range = welcome.index(welcome.startIndex, offsetBy: 5)...welcome.index(before: welcome.endIndex)
welcome.removeSubrange(range)
print(welcome)
welcome = "Hello, welcome Thu!"
//--------------------Substrings-----------------------
let index3 = welcome.firstIndex(of: "u") ?? welcome.endIndex
var welcome2 = welcome[..<index3] //welcome2 đang ở kiểu String.Subsequence, dùng chung bộ nhớ với welcome
let welcome3 = String(welcome2)
print(welcome2)
print(welcome3)
//-----------------------------------------------------
