//
//  ViewController.swift
//  LoginExample
//
//  Created by allabout on 2020/08/22.
//  Copyright © 2020 ExampleCode. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setTextFieldStyle()
    }
    
    func setTextFieldStyle() {
        
//        idTextField.borderStyle = .none
//        passwordTextField.borderStyle = .none
//
//        idTextField.layoutIfNeeded()
//        passwordTextField.layoutIfNeeded()
//
//        let idBottomLine = CALayer()
//        let pwBottomLine = CALayer()
//
//        idBottomLine.frame = CGRect(x: 0.0, y: idTextField.frame.height-2, width: idTextField.frame.width, height: 2)
//        pwBottomLine.frame = CGRect(x: 0.0, y: idTextField.frame.height-2, width: idTextField.frame.width, height: 2)
//        idBottomLine.backgroundColor = loginBtn.backgroundColor?.cgColor
//        pwBottomLine.backgroundColor = loginBtn.backgroundColor?.cgColor
//
//        idTextField.layer.addSublayer(idBottomLine)
//        passwordTextField.layer.addSublayer(pwBottomLine)
//        초기 텍스트 필드의 bottom 부분에 border를 주기 위한 코드
        
        for i in 1...2 {
            if let inputField = self.view.viewWithTag(i) as? UITextField {
                inputField.borderStyle = .none
                inputField.layoutIfNeeded()
                
                let line = CALayer()
                line.frame = CGRect(x: 0.0, y: inputField.frame.height-2, width: inputField.frame.width, height: 2)
                line.backgroundColor = loginBtn.backgroundColor?.cgColor
                
                inputField.layer.addSublayer(line)
            }
        } // 반복문을 통해 textfield의 bottom border를 설정한 부분
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
                let loginAlert  = UIAlertController(title: "로그인 실패", message: "아이디나 비밀번호를 확인해주세요", preferredStyle: .alert) // 경고창 선언
                let downAlert = UIAlertAction(title: "OK", style: .default) // 경고창에 대한 액션 선언
                
                loginAlert.addAction(downAlert) // 경고창 변수에 선언한 액션 추가
                present(loginAlert ,animated: false, completion: nil) // 경고창 출력
            }
        }
    }
}

