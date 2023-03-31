import UIKit

/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

let firstString: String = "I'm learning"
let secondString: String = "swift"

print("\(firstString) \(secondString) !!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 25
/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears: Int = myAge + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear = 365.25
/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed: Float = Float(myAgeInTenYears) * Float(daysInYear)
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassed)")

/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
// altitude
let AC: Double = 8.0
// base
let CB: Double = 6.0
// hypotenuse
let AB = sqrt(pow(AC, 2) + pow(CB, 2))
// area of a triangle
let triangleArea = 0.5 * AC * CB
// triangle perimeter
let trianglePerimeter = AC + CB + AB

print("Hypotenuse AB: \(AB)")
print("Triangle area: \(triangleArea)")
print("Triangle perimeter: \(trianglePerimeter)")


/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
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
