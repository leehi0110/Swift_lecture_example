//
//  ViewController.swift
//  SignUpFormExample
//
//  Created by allabout on 2020/08/15.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lblNameTextField: UITextField!
    @IBOutlet weak var lblEmailTextField: UITextField!
    @IBOutlet weak var lblpasswordTextField: UITextField!
    @IBOutlet weak var lblTelTextField: UITextField!
    @IBOutlet weak var lblBlogTextField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func SignUpAction(_ sender: Any) {
        resultTextView.text = "\(lblNameTextField!)님 가입을 축하합니다."
    }
    
}

