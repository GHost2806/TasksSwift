// 40 задач на основы SWIFT
import Foundation

//1 Создайте переменную name и присвойте ей ваше имя, затем выведите ее на консоль.
var myName = "Sergey"
print(myName)

//2 Создайте переменные age и height и присвойте им ваш возраст и рост соответственно, затем выведите их на консоль.
struct Info {
var name: String
var age: Int
var height: Int
}

var aboutMe = Info(name: "Sergey", age: 22, height: 175)
print("Я \(aboutMe.name), мне \(aboutMe.age), мой рост \(aboutMe.height)")

//3 Создайте массив строк с названиями цветов и выведите его содержимое на консоль.
var flowers = ["Пионы", "Ромашки", "Нарцисы", "Розы", "Тюльпаны"]
print("У меня есть массив с \(flowers.count) числом эллементов. Этот массив содержит: \(flowers)")
//4 Создайте словарь с информацией о вашем имени, возрасте и местоположении, затем выведите его содержимое на консоль.
var myInfo: [String: Any] = [
    "name": "Sergey",
    "age": 22,
    "location": "Tashkent"
]
print("Меня зовут \(myInfo["name"]!), мне \(myInfo["age"]!), я из \(myInfo["location"]!)")
//5 Напишите программу, которая принимает два числа и выводит их сумму.
let a = 1
let b = 2
let sum = a + b
print(sum)

func sumOfNumber (a: Int, b: Int) -> Int {
  return  a + b
}

var processOfSum = sumOfNumber(a: a, b: b)
print(processOfSum)

//6 Напишите программу, которая определяет, является ли число четным или нечетным.
let numOne = 10
let numTwo = 2
if numOne % numTwo == 0 {
    print("Число \(numOne) чётное")
} else {
    print("Число \(numTwo) не чётное")
}
//7 Напишите программу, которая определяет, является ли строка палиндромом (читается одинаково с начала и с конца).
func isItPalindrome(_ input: String) -> Bool {
    let cleanedString = input.lowercased().replacingOccurrences(of: " ", with: "")
    let reversedString = String(cleanedString.reversed())
    return cleanedString == reversedString
}

let palindrome1 = "Ama"
let palindrome2 = "Mama"

print(isItPalindrome(palindrome1))
print(isItPalindrome(palindrome2))

//8 Создайте функцию, которая принимает на вход два числа и возвращает их произведение.
let firstNum = 3
let secondNum = 5
func multiply (numOne: Int, numTwo: Int) -> Int {
   return numOne * numTwo
}

print(multiply(numOne: firstNum, numTwo: secondNum))
//9 Создайте функцию, которая принимает на вход массив чисел и возвращает среднее значение.
let firstAverage = 10
let secondAverage = 20

func findAverage (numOne: Int, numTwo: Int) -> Int {
    return (numOne + numTwo)/2
}
print(findAverage(numOne: firstAverage, numTwo: secondAverage))
//10 Создайте функцию, которая принимает на вход строку и возвращает ее длину.
let myString = "Это моя строка."
let stringSize = myString.count
print(stringSize)
//11 Напишите программу, которая определяет, является ли год високосным.
let year = 1996
func findYear (year: Int) {
    if year % 4 == 0 {
        print("Год високосный")
    } else {
        print("Год не високосный")
    }
}

findYear(year: year)
//12 Создайте цикл for-in, который выводит числа от 1 до 15 на консоль.
for numbers in 1...15 {
    print(numbers)
}
//13 Создайте цикл while, который выводит числа от 1 до 15 на консоль.
var number = 1

while number <= 15 {
    print(number)
    number += 1
}
//14 Создайте массив чисел и найдите сумму всех элементов.
let numbeers = [1, 2, 3, 4, 5]
var sumOfNumbers = 0
for number in numbeers {
    sumOfNumbers += number
}
print("Сумма всех элементов массива: \(sumOfNumbers)")
//15 Создайте функцию, которая принимает на вход число и возвращает его факториал.
var myNum = 3
func findfact (num:Int) -> Int {
    var result = 1
    for i in 1...num {
        result *= i
    }
    return result
}
let doneFact = findfact(num: myNum)
print(doneFact)
//16 Создайте функцию, которая принимает на вход массив чисел и возвращает новый массив, содержащий только четные числа.
func findEvenNumbers(array: [Int]) {
    for number in array {
        if number % 2 == 0 {
            print(number)
        }
    }
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
findEvenNumbers(array: numbers)

//17 Создайте функцию, которая принимает на вход массив строк и возвращает новый массив, содержащий только строки длиной более 5 символов.
func filterStringsLongerThanFive(array: [String]) -> [String] {
    var resultArray: [String] = []

    for string in array {
        if string.count > 5 {
            resultArray.append(string)
        }
    }

    return resultArray
}

let inputArray = ["apple", "banana", "orange", "kiwi", "strawberry", "grape"]
let filteredArray = filterStringsLongerThanFive(array: inputArray)

print(filteredArray)


//18 Создайте класс Person с свойствами name и age, затем создайте объект этого класса и выведите его свойства на консоль.
class Person {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
 let personId = Person(name: "Alex", age: 12)
print("Его зовут \(personId.name) и его возраст: \(personId.age)")
//19 Создайте перечисление (enum) с названиями дней недели и выведите все дни на консоль.
enum DaysOfWeek {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

for day in [DaysOfWeek.Monday, .Tuesday, .Wednesday, .Thursday, .Friday, .Saturday, .Sunday] {
    print(day)
}


//20 Создайте функцию, которая принимает на вход массив чисел и возвращает наибольшее число.
let arrayOfNumbers = [10, 15, 22, 5, 1, 139]
func findBigger (numbersBiggerOrNot: [Int]) -> Int {
    var largestNum = numbersBiggerOrNot [0]
    for numberBiggerOrNot in numbersBiggerOrNot {
        if numberBiggerOrNot > largestNum {
            largestNum = numberBiggerOrNot
        }
    }
    return largestNum
}

print(findBigger(numbersBiggerOrNot: arrayOfNumbers))
//21 Создайте функцию, которая принимает на вход массив чисел и возвращает наименьшее число.
func findSmaller (numsOfSmall: [Int]) -> Int {
    var smallerNum = numsOfSmall [0]
    for numOfSmall in numsOfSmall {
        if numOfSmall < smallerNum {
            smallerNum = numOfSmall
        }
    }
    return smallerNum
}

let smallerNumFind = [1, 22, 4, 77 ,139]
print(findSmaller(numsOfSmall: smallerNumFind))
//22 Создайте функцию, которая принимает на вход строку и возвращает ее в обратном порядке.
let someString = "Это строка перевёрнута"
func reversSomeString (someInterestingSrint: String) -> String {
    let reversedString = String(someInterestingSrint.reversed())
    return reversedString
}
print(reversSomeString(someInterestingSrint: someString))
//23 Создайте функцию, которая принимает на вход массив строк и сортирует его в алфавитном порядке.
func sortStringsAlphabetically(_ inputArray: [String]) -> [String] {
    let sortedArray = inputArray.sorted()
    return sortedArray
}

let unsortedArray = ["banana", "apple", "cherry", "date"]
let sortedArray = sortStringsAlphabetically(unsortedArray)

print(sortedArray)

//24 Создайте программу, которая определяет, является ли строка анаграммой другой строки.
func areAnagrams(_ str1: String, _ str2: String) -> Bool {

    let cleanedStr1 = str1.lowercased().replacingOccurrences(of: " ", with: "")
    let cleanedStr2 = str2.lowercased().replacingOccurrences(of: " ", with: "")
    
    guard cleanedStr1.count == cleanedStr2.count else {
        return false
    }
    
    var charCount1: [Character: Int] = [:]
    var charCount2: [Character: Int] = [:]
    
    for char in cleanedStr1 {
        charCount1[char, default: 0] += 1
    }
    
    for char in cleanedStr2 {
        charCount2[char, default: 0] += 1
    }
    
    return charCount1 == charCount2
}

let word1 = "listen"
let word2 = "silent"
let word3 = "hello"
let word4 = "world"

print("\(word1) и \(word2) анаграммы: \(areAnagrams(word1, word2))")
print("\(word3) и \(word4) анаграммы: \(areAnagrams(word3, word4))")

//25 Создайте функцию, которая принимает на вход число и возвращает массив всех его делителей.
func findAllDivisors(of number: Int) -> [Int] {
    guard number > 0 else {
        return []
    }
    
    var divisors: [Int] = []

    for divisor in 1...number {
        if number % divisor == 0 {
            divisors.append(divisor)
        }
    }
    
    return divisors
}

let someNumber = 12
let divisors = findAllDivisors(of: someNumber)
print("Делители числа \(someNumber): \(divisors)")

////26 Создайте функцию, которая принимает на вход две строки и определяет, является ли одна строка анаграммой другой.
//func areAnagrams(_ str1: String, _ str2: String) -> Bool {
//
//    let cleanedStr1 = str1.lowercased().replacingOccurrences(of: " ", with: "")
//    let cleanedStr2 = str2.lowercased().replacingOccurrences(of: " ", with: "")
//
//    guard cleanedStr1.count == cleanedStr2.count else {
//        return false
//    }
//
//    var charCount1: [Character: Int] = [:]
//    var charCount2: [Character: Int] = [:]
//
//    for char in cleanedStr1 {
//        charCount1[char, default: 0] += 1
//    }
//
//    for char in cleanedStr2 {
//        charCount2[char, default: 0] += 1
//    }
//
//    return charCount1 == charCount2
//}
//
//let word1 = "listen"
//let word2 = "silent"
//let word3 = "hello"
//let word4 = "world"
//
//print("\(word1) и \(word2) анаграммы: \(areAnagrams(word1, word2))")
//print("\(word3) и \(word4) анаграммы: \(areAnagrams(word3, word4))")


//27 Создайте программу, которая определяет, является ли строка палиндромом, игнорируя пробелы и знаки препинания.
func isPalindrome(_ str: String) -> Bool {
    let cleanedStr = str.lowercased().replacingOccurrences(of: " ", with: "").replacingOccurrences(of: ",", with: "").replacingOccurrences(of: ".", with: "")
    return cleanedStr == String(cleanedStr.reversed())
}

let phrase = "A man, a plan, a canal, Panama"
if isPalindrome(phrase) {
    print("\(phrase) - это палиндром")
} else {
    print("\(phrase) - не палиндром")
}

//28 Создайте функцию, которая принимает на вход строку и возвращает количество гласных букв в ней.
func countVowels(in str: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return str.lowercased().filter { vowels.contains($0) }.count
}

let text = "Hello, World!"
let vowelCount = countVowels(in: text)
print("Количество гласных букв в тексте: \(vowelCount)")
//29 Создайте программу, которая определяет, является ли строка палиндромом, игнорируя регистр букв.
func isCaseInsensitivePalindrome(_ str: String) -> Bool {
    let cleanedStr = str.lowercased()
    return cleanedStr == String(cleanedStr.reversed())
}

let word = "Racecar"
if isCaseInsensitivePalindrome(word) {
    print("\(word) - это палиндром")
} else {
    print("\(word) - не палиндром")
}

//30 Создайте функцию, которая принимает на вход массив чисел и возвращает новый массив, содержащий только числа, которые делятся на 3.
func filterNumbersDivisibleBy3(in array: [Int]) -> [Int] {
    return array.filter { $0 % 3 == 0 }
}

let numbersOne = [1, 3, 6, 9, 12, 15]
let divisibleBy3 = filterNumbersDivisibleBy3(in: numbersOne)
print(divisibleBy3)

//31 Создайте программу, которая определяет, является ли строка изограммой (все буквы в ней уникальны).
func isIsogram(_ str: String) -> Bool {
    let cleanedStr = str.lowercased().replacingOccurrences(of: " ", with: "")
    return Set(cleanedStr).count == cleanedStr.count
}

let words = "Dermatoglyphics"
if isIsogram(words) {
    print("\(words) - это изограмма")
} else {
    print("\(words) - не изограмма")
}

//32 Создайте функцию, которая принимает на вход массив строк и возвращает новый массив, содержащий только строки, начинающиеся с определенной буквы.
func filterStringsStartingWith(_ letter: Character, in array: [String]) -> [String] {
    return array.filter { $0.lowercased().hasPrefix(String(letter).lowercased()) }
}

let myWords = ["apple", "banana", "cherry", "date", "elderberry"]
let letter: Character = "C"
let filteredWords = filterStringsStartingWith(letter, in: myWords)
print(filteredWords)

//33 Создайте программу, которая определяет, является ли строка панграммой (содержит все буквы алфавита).
func isPangram(_ str: String) -> Bool {
    let cleanedStr = str.lowercased().replacingOccurrences(of: " ", with: "")
    let alphabet = Set("abcdefghijklmnopqrstuvwxyz")
    return Set(cleanedStr).isSuperset(of: alphabet)
}

let sentence = "The quick brown fox jumps over the lazy dog"
if isPangram(sentence) {
    print("\(sentence) - это панграмма")
} else {
    print("\(sentence) - не панграмма")
}

//34 Создайте функцию, которая принимает на вход два массива чисел и возвращает новый массив, содержащий общие элементы этих двух массивов.
func findCommonElements(in array1: [String], and array2: [String]) -> [String] {
    let set1 = Set(array1)
    let set2 = Set(array2)
    return Array(set1.intersection(set2))
}

let array1 = ["apple", "banana", "cherry"]
let array2 = ["cherry", "date", "elderberry"]
let commonElements = findCommonElements(in: array1, and: array2)
print(commonElements)

//35 Создайте функцию, которая принимает на вход строку и возвращает новую строку, в которой все гласные буквы заменены на звездочки (*).

func replaceVowelsWithAsterisks(_ input: String) -> String {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    
    let result = input.map { char -> Character in
        if vowels.contains(char) {
            return "*"
        } else {
            return char
        }
    }
    
    return String(result)
}

let inputString = "Hello, World!"
let stringWithAsterisks = replaceVowelsWithAsterisks(inputString)
print(stringWithAsterisks)
