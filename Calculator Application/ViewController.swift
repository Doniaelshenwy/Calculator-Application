//
//  ViewController.swift
//  Calculator Application
//
//  Created by Donia Elshenawy on 19/02/2022.
//

import UIKit

class ViewController: UIViewController {

    var num1 : Double = 0
    var num2 : Double = 0
    var op : String = ""
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clearBtn(_ sender: UIButton) {
        outputLabel.text = "0"
    }
    
  
    @IBAction func plusAndMinusBtn(_ sender: UIButton) {
        guard let checkText = outputLabel.text, let convert = Double(checkText) else { return
        }
        outputLabel.text = String(-1 * convert)
    }
    
    @IBAction func remainderDivisionBtn(_ sender: UIButton) {
        op = "%"
        guard let checkText = outputLabel.text, let convertToDouble = Double(checkText) else {
            return
        }
        num1 = convertToDouble
        outputLabel.text = ""
    }
    
    
    @IBAction func devisionBtn(_ sender: UIButton) {
        op = "/"
        guard let checkText = outputLabel.text, let convertToDouble = Double(checkText) else {
            return
        }
        num1 = convertToDouble
        outputLabel.text = ""
    }
    
    
   @IBAction func eightBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "8"
        }
        else{
            outputLabel.text! += "8"
            
        }
    }
   
   
    @IBAction func multiplingBtn(_ sender: UIButton) {
        op = "*"
        guard let checkText = outputLabel.text, let convertToDouble = Double(checkText) else {
            return
    }
        num1 = convertToDouble
        outputLabel.text = ""
    }
    @IBAction func nineBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "9"
        }
        else{
            outputLabel.text! += "9"
            
        }
    }
    
    @IBAction func fourBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "4"
        }
        else{
            outputLabel.text! += "4"
            
        }
    }
    
    
    
    @IBAction func fiveBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "5"
        }
        else{
            outputLabel.text! += "5"
            
        }
    }
    
    
    
    @IBAction func sixBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "6"
        }
        else{
            outputLabel.text! += "6"
            
        }
    }
    
    @IBAction func minusBtn(_ sender: UIButton) {
        op = "-"
        guard let checkText = outputLabel.text, let convertToDouble = Double(checkText) else {
            return
        }
        num1 = convertToDouble
        outputLabel.text = ""
    }
    
    @IBAction func oneBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "1"
        }
        else{
            outputLabel.text! += "1"
            
        }
    }
    
    @IBAction func twoBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "2"
        }
        else{
            outputLabel.text! += "2"
            
        }
    }
    
    @IBAction func threeBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "3"
        }
        else{
            outputLabel.text! += "3"
            
        }
    }
    
    @IBAction func addBtn(_ sender: UIButton) {
        op = "+"
        guard let checkText = outputLabel.text, let convertToDouble = Double(checkText) else {
            return
        }
        num1 = convertToDouble
        outputLabel.text = ""
    }
    
    
    @IBAction func zeroBtn(_ sender: UIButton) {
        if (outputLabel.text == "0") {
            outputLabel.text = ""
            outputLabel.text! += "0"
        }
        else{
            outputLabel.text! += "0"
            
        }
    }
    
    
    @IBAction func dotBtn(_ sender: UIButton) {
        if(outputLabel.text == "0"){
            outputLabel.text! += "."
        }
        else{
            outputLabel.text! += "."
        }
    }
    
    
   

    @IBAction func equalBtn(_ sender: UIButton) {
        guard let checkTextNum2 = outputLabel.text, let convertToDouble = Double(checkTextNum2) else {
            return
        }
        num2 = convertToDouble
        
        switch op {
        case "+":
            outputLabel.text = String(num1 + num2)
        case "-":
            outputLabel.text = String(num1 - num2)
        case "*":
            outputLabel.text = String(num1 * num2)
        case "/":
            if(num2 != 0){
            outputLabel.text = String(num1 / num2)
            }
            else{
                print("Cannot division by 0")
            }
        case "%":
            var num = Int(num1 / num2)
            var multiply = num * Int(num2)
            var reminder = Int(num1) - multiply
            outputLabel.text = String(reminder)
            
        default:
            print("Enter invalid value")
        }
    }
}

