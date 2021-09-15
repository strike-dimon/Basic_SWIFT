import Foundation

//MARK: Написать функцию, которая определяет, четное число или нет.

//func even(number: Int) -> Bool {
//    return number % 2 == 0
//}
//    for i in 0...5 {
//        let result = even(number: i)
//        // Display result.
//        print("\(i) = \(result)")
//    }

//MARK: Написать функцию, которая определяет, делится ли число без остатка на 3.

//func getDevision(number: Int) -> Bool {
//    return number % 3 == 0
//}
//    for i in 1...9 {
//        let result = getDevision(number: i)
//        if result == true {
//            print("divisible by 3 is \(i)")
//        }
//    }
//
//
// MARK: Создать возрастающий массив из 100 чисел.

var incrementedArray = [Int]()
for i in 0 ... 100 {
    incrementedArray.append(i)
}
print(incrementedArray)

//MARK: Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for x in incrementedArray {
    var aray = [nil] as [Any?]
    let even = x % 2
    let divBy3 = x % 3
    if (even == 0) && (divBy3 == 0) {
        let newArray: () = aray.append(x)
        let difference = newArray.difference(from: incrementedArray)
        print(difference)
    }

}

