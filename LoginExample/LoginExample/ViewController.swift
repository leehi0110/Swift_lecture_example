//
//  ViewController.swift
//  LoginExample
//
//  Created by allabout on 2020/08/22.
//  Copyright © 2020 ExampleCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    } // return 버튼을 눌렀을때 키보드를 내리는 메서드
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    } // 뷰를 클릭했을때 키보드를 내리는 메서드
    
    
    @IBAction func loginAction(_ sender: Any) {
        if let id = idTextField.text, let pw = passwordTextField.text {
            if id == "01046329790" && pw == "govlaos1229*" {
                print("success")
            }
            else {
                print("access deny")
            }
        }
    }
}

