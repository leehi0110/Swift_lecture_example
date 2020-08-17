//
//  ViewController.swift
//  CustomKeyboardExample
//
//  Created by allabout on 2020/08/17.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomKeyboardDelegate {

    @IBOutlet weak var FirstTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
        
        let myKeyBoardView = loadNib?.first as! CustomKeyboard
        myKeyBoardView.delegate = self
        FirstTextField.inputView = myKeyBoardView
    }

    func keyboardTapped(str: String) {
        
        let oldNumber = Int(FirstTextField.text!)
        var newNumber = Int(str)
        
        if str == "0" && oldNumber != nil{
            newNumber = oldNumber! * 10
        }
        else if str == "00" && oldNumber != nil{
            newNumber = oldNumber! * 100
        }
        else if str == "000" && oldNumber != nil {
            newNumber = oldNumber! * 1000
        }
        
        if let hasNumber = newNumber {
            
            let numberFomatter = NumberFormatter()
            numberFomatter.numberStyle = .decimal
            
            if let formatted = numberFomatter.string(from: NSNumber(value: hasNumber)){
                FirstTextField.text = formatted
            }
        }
    }
}

