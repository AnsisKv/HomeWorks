import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let deposit = 500000
let rate = 0.05
let period = 5

var profit = deposit

for _ in 1...period {
    profit += Int(Double(profit) * rate)
}

print("Amount of income after \(period) years will be \(profit - deposit) Eur. My total deposit will be \(profit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var evenNumbers: [Int] = []

for number in numbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    }
}

print("My even numbers are: \(evenNumbers)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 0

while true {
    let randomNumber = Int.random(in: 1...10)
    counter += 1
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let electricPost = 10
let climb = 2
let slide = 1

var distance = 0
var numberOfDays = 0

while distance < electricPost {
    distance += climb
    if distance >= electricPost {
        numberOfDays += 1
        break
    }
    distance -= slide
    numberOfDays += 1
}

print("Bug will spend \(numberOfDays) days to reach top of the post")
