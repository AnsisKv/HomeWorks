import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var number1: Float = 3.14
var number2: Float = 42.0

var numberSum: Double = Double(number1 + number2)

print("\(numberSum)")


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 7
var numberTwo: Int = 3

let newNumber: Int = Int(numberOne / numberTwo)
let remainder: Int = Int(numberOne % numberTwo)

print("When dividing \(numberOne) by \(numberTwo), the result is \(newNumber), the remainder is \(remainder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

let qty = 11
let price = 1000
var totalSum = 0

if qty >= 10{
    totalSum = qty * 850
} else if qty >= 5{
    totalSum = qty * 900
} else {
    totalSum = qty * 1000
}

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge:String = "33a"
let age: Int? = Int(userInputAge)

if age != nil {
    print(age!)
} else {
    print("Fatal error converting to Int")
}

    
    /*
     Ex5:
     Calculate the number of years, months, days have passed from you birthday to current date.
     print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
     */
    
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd/MM/yyyy"

let calendar = Calendar.current

let currentDate = Date()

let myBirthDateString = "07.05.1997"

let myBirthDate = dateFormatter.date(from: myBirthDateString) ?? Date()

var totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to: currentDate).year
var totalMonthFromBirth = calendar.dateComponents([.month], from: myBirthDate, to: currentDate).month
var totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDate, to: currentDate).day

if totalYearsFromBirth == 0 || totalMonthFromBirth == 0 || totalDaysFromBirth == 0 {
    print("unable to convert")
} else {
    print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthFromBirth!), total days: \(totalDaysFromBirth!) have passed")
    
}
    /*
     Ex6:
     Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
     Use switch case to print("I was born in the ... quarter")
     */
    //=================

if let monthOfBirth = calendar.dateComponents([.month], from: myBirthDate).month {
    switch monthOfBirth {
    case 1...3:
        print("I was born in the first quarter.")
    case 4...6:
        print("I was born in the second quarter.")
    case 7...9:
        print("I was born in the third quarter.")
    case 10...12:
        print("I was born in the fourth quarter.")
    default:
        print("Unable to determine quarter of birth.")
    }
} else {
    print("Unable to determine month of birth.")
}
