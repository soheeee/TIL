//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by NAVER on 2017. 7. 6..
//  Copyright © 2017년 NAVER. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double?{
        didSet{
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double?{
        if let value = fahrenheitValue{
            return (value - 32) * (5/9)
        }else{
            return nil
        }
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField){
        if let text = textField.text, let value = Double(text){
            fahrenheitValue = value
        }
        else{
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject){
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel(){
        if case let value as NSNumber = celsiusValue{
            celsiusLabel.text = numberFormatter.string(from: value)
        }
        else{
            celsiusLabel.text = "???"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        let replacementTextHasAlphabet = string.rangeOfCharacter(from: NSCharacterSet.letters)
        
        if existingTextHasDecimalSeparator != nil && replacementTextHasDecimalSeparator != nil || replacementTextHasAlphabet != nil{
            return false
        }
        else{
            return true
        }
    }
    
}
