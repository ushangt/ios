//
//  ViewController.swift
//  ZapposCalculator
//
//  Created by Ushang Amit Thakker on 2/9/16.
//  Copyright (c) 2016 Ushang Amit Thakker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Control Buttons

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var plusMinusBtn: UIButton!
    @IBOutlet weak var modulusBtn: UIButton!
    @IBOutlet weak var divideBtn: UIButton!
    @IBOutlet weak var multiplicationBtn: UIButton!
    @IBOutlet weak var subtractBtn: UIButton!
    @IBOutlet weak var additionBtn: UIButton!
    @IBOutlet weak var equalBtn: UIButton!
    
    // Number Buttons
    
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    
    // Class variables
    var currentOperator = ""
    var storedValue = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func numberAction(sender: AnyObject) {
        
        var finalAnswer = answerLabel.text!
        
        var sent = sender as! UIButton
        
        
        if let send = sent.titleLabel?.text
        {
            finalAnswer = finalAnswer + send
        }
        else
        {
           
        }
        
        answerLabel.text = finalAnswer
       
        
    }
    
 
    
    @IBAction func operatorAction(sender: AnyObject) {
        var operatorBtn = sender as! UIButton
        if let send = operatorBtn.titleLabel?.text
        {
            currentOperator = send
        }
        else
        {
            
        }
        var temp = answerLabel.text! as NSString
        storedValue = temp.doubleValue
        answerLabel.text = ""
       
    }
    
    
    
    @IBAction func equalAction(sender: AnyObject) {
        
        var operand2 = answerLabel.text! as NSString
        switch currentOperator{
            case "+":
            var finalAnswer = storedValue + operand2.doubleValue
            answerLabel.text = toString(finalAnswer)
            
            case "-":
            var finalAnswer = storedValue - operand2.doubleValue
            answerLabel.text = toString(finalAnswer)
            
            case "*":
            var finalAnswer = storedValue * operand2.doubleValue
            answerLabel.text = toString(finalAnswer)
            
            case "/":
            var finalAnswer = storedValue / operand2.doubleValue
            answerLabel.text = toString(finalAnswer)
            
            case "%":
            var finalAnswer = storedValue % operand2.doubleValue
            answerLabel.text = toString(finalAnswer)
            
            default:
            log(storedValue)
            
        }
        
        
        
    }
    
  


}

