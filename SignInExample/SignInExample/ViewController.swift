//
//  ViewController.swift
//  SignInExample
//
//  Created by allabout on 2020/08/18.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var lblEmailError: UILabel!
    @IBOutlet weak var lblPasswordError: UILabel!
    
    var emailErrorHeight: NSLayoutConstraint!
    var passwordErrorHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // textfield 값이 변경되는 것을 캐치
        emailTextField.addTarget(self, action: #selector(textFieldEdited), for: UIControl.Event.editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        
        emailErrorHeight = lblEmailError.heightAnchor.constraint(equalToConstant: 0)
        passwordErrorHeight = lblPasswordError.heightAnchor.constraint(equalToConstant: 0)
    }

    @objc func textFieldEdited (textField: UITextField) {
        
        if textField == emailTextField {
            print("textField \(textField.text!)")
            
            if isValidEmail(email: textField.text) {
                // 에러표시가 안나오와야 한다
                emailErrorHeight.isActive = true
            }
            else {
                // 에러표시가 나와야 한다
                emailErrorHeight.isActive = false
            }
            
        } // 이메일에 대한 처리
        else if textField == passwordTextField {
            print("passwordTextField \(textField.text!)")
            
            if isVaildPassword(password: textField.text) {
                passwordErrorHeight.isActive = true
            }
            else {
                passwordErrorHeight.isActive = false
            }
        } // 패스워드에 대한 처리
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded() // 변화할때 마다 갱신
        }
    }
    
    func isVaildPassword(password:String?) -> Bool {
        
        if let pw = password {
            if pw.count < 8 {
                return false
            }
            return true
        }
        
        return false
    }
    
    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
}

