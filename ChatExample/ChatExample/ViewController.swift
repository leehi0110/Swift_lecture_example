//
//  ViewController.swift
//  ChatExample
//
//  Created by allabout on 2020/08/18.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextViewDelegate {

    @IBOutlet weak var chatTableView: UITableView!{
        didSet{
            chatTableView.delegate = self
            chatTableView.dataSource = self
            chatTableView.separatorStyle = .none
        }
    }
    
    @IBOutlet weak var inputTextView: UITextView! {
        didSet {
            inputTextView.delegate = self
        }
    }
    @IBOutlet weak var inputViewBtnMargin: NSLayoutConstraint!
    @IBOutlet weak var inputTextViewHeight: NSLayoutConstraint!
    
    var chatDatas = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 사용하려는 셀을 등록
        chatTableView.register(UINib(nibName: "MyCellTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        chatTableView.register(UINib(nibName: "YourCell", bundle: nil), forCellReuseIdentifier: "yourCell")
        
        // 키보드 관련 옵저버 설정 필요
        // 키보드 올라올 때
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        // 키보드 내려갈 때
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow (noti: NSNotification) {
        let notiInfo = noti.userInfo!
        let keyboardFrame = notiInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        let height = keyboardFrame.size.height
        
        inputViewBtnMargin.constant = height - self.view.safeAreaInsets.bottom
        
        let animationDuration = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        UIView.animate(withDuration: animationDuration) {
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func keyboardWillHide (noti: NSNotification) {
        let notiInfo = noti.userInfo!
        
        let animationDuration = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        inputViewBtnMargin.constant = 0
        
        UIView.animate(withDuration: animationDuration) {
            self.view.layoutIfNeeded()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCellTableViewCell
            myCell.selectionStyle = .none
            myCell.myTextView.text = chatDatas[indexPath.row]
            
            return myCell
        }
        else {
            let yourCell = tableView.dequeueReusableCell(withIdentifier: "yourCell", for: indexPath) as! YourCell
            yourCell.selectionStyle = .none
            yourCell.yourTextView.text = chatDatas[indexPath.row]
            
            return yourCell
        }
    }
    

    @IBAction func sendStringAction(_ sender: Any) {
        chatDatas.append(inputTextView.text)
        inputTextView.text = ""
        
//        chatTableView.reloadData()
        
        let lastIndexPath = IndexPath(row: chatDatas.count-1, section: 0)
        
        chatTableView.insertRows(at: [lastIndexPath], with: .automatic)
        
        inputTextViewHeight.constant = 40
        
        chatTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.bottom, animated: true)
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
        if textView.contentSize.height <= 40 {
            inputTextViewHeight.constant = 40
        }
        else if textView.contentSize.height >= 100 {
            inputTextViewHeight.constant = 100
        }
        else {
            inputTextViewHeight.constant = textView.contentSize.height
        }
        
    }
    
}

