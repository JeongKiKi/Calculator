//
//  ViewController.swift
//  calculator
//
//  Created by 정기현 on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {
     var sum = Double();
    var num = Double();
    var isPlus = false;
    var isMinus = false;
    var isMultiply = false;
    var isDiv = false;
    var userTyping = false;
    var operatorSymbol: String?
     var cal = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //    숫자 라벨
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    //    숫자 버튼
    @IBAction func btn(_ sender: UIButton) {
        
        if( display.text == "0"){
            display.text = ""
        }
        
        let dight = sender.currentTitle!
        print("thouched \(dight) dight");
        if userTyping {
            
            let textCurrentDisplay = display.text!
            display.text = textCurrentDisplay + dight
        }else{
            display.text = dight
        }
        userTyping = true;
    }
    //    C 초기화 버튼
    @IBAction func clear(_ sender: UIButton) {
        display.text = "0"
        sum = 0;
        
    }
    //    = 을 눌렀을때
    @IBAction func result(_ sender: UIButton) {
        
        num = Double(display.text!)!
        let res = cal.calculate(firstNumber: sum,operatorSymbol: operatorSymbol!, secondNumber: num)
        
        sum = res!
        display.text = String(res!)
        num = 0
        isPlus = false
        isDiv = false
        isMultiply = false
        isMinus = false
    }
 
    //    +버튼
    @IBAction func plus(_ sender: UIButton) {
        if(isPlus==false){
            sum = Double(display.text!)!
            operatorSymbol = "+"
            print("sum",sum)
            userTyping = false
            isDiv = false
            isMinus = false
            isMultiply = false

            isPlus = true
            display.text = "0"
        }
    }
    
    //    -버튼
    @IBAction func minus(_ sender: UIButton) {
        if(isMinus==false){
            sum = Double(display.text!)!
            operatorSymbol = "-"
            print("sum",sum)
            userTyping = false
            isDiv = false
            isPlus = false
            isMultiply = false
            
            isMinus = true
            display.text = "0"
        }
    }
    
    //    x버튼
    @IBAction func multiply(_ sender: UIButton) {
        if(isMultiply==false){
            sum = Double(display.text!)!
            operatorSymbol = "*"
            print("sum",sum)
            userTyping = false
            isDiv = false
            isMinus = false
            isPlus = false
            
            isMultiply = true
            display.text = "0"
        }
    }
    
    //    /버튼
    @IBAction func divide(_ sender: UIButton) {
        if(isDiv==false){
            sum = Double(display.text!)!
            operatorSymbol = "/"
            print("sum",sum,"num",num)
            userTyping = false
            isPlus = false
            isMinus = false
            isMultiply = false
            
            isDiv = true
            display.text = "0"
        }
    }
}
//calculator 클래스
/*class Calculator {
//    var cal = ViewController()
     func calculate(firstNumber: Double?,operatorSymbol: String,  secondNumber: Double) -> Double? {
        guard let fn = firstNumber else {
            return nil
        }
        switch operatorSymbol {
        case "+": print(fn, secondNumber)
//            cal.isPlus = false
//            cal.operatorSymbol = nil
            return fn + secondNumber
      
        case "-":
//            cal.isMinus = false
//            cal.operatorSymbol = nil
            return fn - secondNumber
        case "*":
//            cal.isMultiply = false
//            cal.operatorSymbol = nil
            return fn * secondNumber
        case "/":
//            cal.isDiv = false
//            cal.operatorSymbol = nil
            return fn / secondNumber
        default:
            print("ERROR")
            return 0
        }
    }
    
    
}*/


