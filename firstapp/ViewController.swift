//
//  ViewController.swift
//  firstapp
//
//  Created by Сергей Емелин on 20.10.2024.
//

import UIKit
//мое изменение
class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func plus (_ sender: Any) {
        //label.text = textfield.text
        
        let a = textfield1.text!
        let b = textfield2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        if let numberA = Double(a), let numberB = Double(b) {
            let sum = numberA + numberB
            let roundedsum = round(sum * 100000) / 100000
            label.text = String(roundedsum)

        } else {
            label.text = "введите два числа"
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield1.text!
        let b = textfield2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
        label.text = "введите два числа"
            
        return
        }
        
        let sum = numberA - numberB
        let roundedsum = round(sum * 100000) / 100000
        label.text = String(roundedsum)
        
    }
    @IBAction func umnojit(_ sender: Any) {
        let a = textfield1.text!
        let b = textfield2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
        label.text = "введите два числа"
            
        return
        }
        
        let sum = numberA * numberB
        let roundedsum = round(sum * 100000) / 100000
        label.text = String(roundedsum)
        
    }
    
    @IBAction func delit(_ sender: Any) {
        let a = textfield1.text!
        let b = textfield2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
        label.text = "введите два числа"
            
        return
        }
        
        let sum = numberA / numberB
        let roundedsum = round(sum * 100000) / 100000
        label.text = String(roundedsum)
        
    }
    
}
