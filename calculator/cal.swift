//
//  cal.swift
//  calculator
//
//  Created by 정기현 on 2023/07/19.
//
//

class Calculator {
    //    var cal = ViewController()
    var add = AddOperation()
    var sub = SubtractOperation()
    var mul = MultiplyOperation()
    var div = DivideOperation()
    func calculate(firstNumber: Double?,operatorSymbol: String,  secondNumber: Double) -> Double? {
        guard let fn = firstNumber else {
            return nil
        }
        print(operatorSymbol)
        switch operatorSymbol {
        case "+": print(fn, secondNumber)
            
            return add.calculate(firstNumber: fn, secondNumber: secondNumber)
            
        case "-":
            
            return sub.calculate(firstNumber: fn, secondNumber: secondNumber)
        case "*":
            
            return mul.calculate(firstNumber: fn, secondNumber: secondNumber)
        case "/":
            
            return div.calculate(firstNumber: fn, secondNumber: secondNumber)
        default:
            print("ERROR")
            return 0
        }
    }
}
// + class
class AddOperation{
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {return firstNumber != 0 ? firstNumber + secondNumber : 0}
}
// - class
class SubtractOperation{
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {return firstNumber != 0 ? firstNumber - secondNumber : 0}
}
// * class
class MultiplyOperation{
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {return firstNumber != 0 ? firstNumber * secondNumber : 0}
}
// / class
class DivideOperation{
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {return firstNumber != 0 ? firstNumber / secondNumber : 0}
}
