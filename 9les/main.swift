import Foundation

//Задание1. Написать код, который находит сумму двух чисел. (5 баллов)

//print("Введите число:")
//var a = Int(readLine()!)!
//print("Введите число:")
//var b = Int(readLine()!)!
//var sum = a + b
////
//print("Cумма: \(sum)")
//Задание2. Написать код, в котором при отрицательном значении переменной,
//выводит “отрицательное число”, иначе “положительное число” (5 баллов)

//if sum < 0{
//    print("Число \(sum) - отриццательное число")
//}else if sum > 0{
//    print("Число \(sum) - положительное число")
//}

//Задание3. Написать код, в котором генерируется рандомное число от 1 до 100 включительно. (5 баллов)

var randomNumber = Int.random(in: 0...100)
print("Ваше рандомное число: \(randomNumber)")

//Задание4. Написать код, который распечатывает числа от 1 до 10, кроме числа 5. (5 баллов)
for i in 1...10{
    if i == 5{
        continue
    }
    print(i)
}

//Задание5. Написать код, в котором генерируется рандомное число от 1 до 3 включительно. Если выпадает число 1, то распечатывать “загорелся зеленый свет”, если 2, то “загорелся желтый свет”, если 3, то “загорелся красный свет”. (5 баллов)
var randomNumber_2 = Int.random(in: 1...3)
func light(){
    if randomNumber_2 == 1{
        print("загорелся зеленый свет")
    }else if randomNumber_2 == 2{
        print("загорелся желтый свет")
    }else if randomNumber_2 == 3{
        print("загорелся красный свет")
    }
}
light()

//Задание6. Есть словарь из 4 элементов [“яблоко”: “фрукт”, “арбуз”: “фрукт”, “морковь”: “овощь”, “банан”: “фрукт”]. Удалить из словаря слово “морковь” с помощью цикла и проверок. (10 баллов)

var fruit =  ["apple": "fruit", "watermelon": "fruit", "carrot": "vegetable", "banana": "fruit"]

//for (key, values) in fruit{
//    var longestStr = fruit.sort((key, values) => values.length - key.length)[0];
//}
//Я тебе помогу, смотри: про переменную maxString вообще забудь, я не знаю зачем она там, теперь начнем:
//1. Создай массив с нулевой строкой массива d19,т.е вот так: let d191=["Your"]
//2. Прогони d19 через цикл как обычно
//3. Сравни длинны массивов d19 и d191 только длинны!! Т.е. вот так if( d19.lenght>d191.lenght)
//4. Теперь присвой d191=d19[i] и выведи d191, и всё!!


//Задание7.Создать массив из слов. Заполнить данными. Определить програмно самое длинное слово. (15 баллов)

var words = ["apple", "elephant", "you", "exclude", "grain", "beautiful"]


//func countSymbols(){
//    for _ in words{
//
//        if words[0] > words[1] {
//            words.remove(at: 1)
//        }else{
//            words.remove(at: 0)
//        }
//    }
//    print("Итого символов: \(words)")
//}
//countSymbols()

//есть структура, но не знаю как ее воссоздать

//Задание8. Создать массив из букв алфавита и чисел типа String. Написать код, который рандомно берет 6 символов и образует новое слово (пароль). (15 баллов)

var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

var one = alphabet.randomElement()
var two = alphabet.randomElement()
var three = alphabet.randomElement()
var four = alphabet.randomElement()
var five = alphabet.randomElement()
var six = alphabet.randomElement()

func password(){
    for _ in 1...6{
        print("your password:\(one! + two! + three! + four! + five! + six!)")
        break
    }
}
password()
//Задание9. Написать код, в котором генерируется 10 разных чисел в пределех от 1 до 1000. Каждое число добавляется в пустой массив. 

var numbers: [Int] = []


for _ in 1...10{
    var num = Int.random(in: 1...1000)
    numbers.append(num)
    print(numbers)
}


//Задание10. Написать код, в котором имитируется гонка 2 машин. Скорость рандомно меняется от 150 до 200. Всего 5 кругов. Кто больше набрал скорость за 5 кругов, тот побеждает. (20 баллов)

 
var car1 = 0
var car2 = 0

for _ in 1...5{
    let car_1 = Int.random(in: 150...200)
    let car_2 = Int.random(in: 150...200)
    
    if car_1 > car_2{
        car1 += 1
    }else{
        car2 += 1
    }
}
    if car1 > car2{
    print("Winner: car1 - \(car1)")
}else {
    print("Winner: car2 - \(car2)")
}

