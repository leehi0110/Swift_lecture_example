//
//  ViewController.swift
//  FlightBookingExample
//
//  Created by allabout on 2020/08/19.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateBtn: UIButton!
    @IBOutlet weak var lblreturnDate: UILabel!
    @IBOutlet weak var returnDateBtn: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    var btnTag: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblreturnDate.isHidden = true
        returnDateBtn.isHidden = true
        selectDatePicker.isHidden = true
    }
    
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        selectDatePicker.isHidden = !selectDatePicker.isHidden
        
        btnTag = sender.tag
    }
    // select Date를 하면 데이트 피커가 보이는 함수
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
        returnDateBtn.isHidden = !sender.isOn
        lblreturnDate.isHidden = !sender.isOn
    } // 왕복이 선택되면 돌아오는 날짜를 선택하는 레이블과 버튼이 보이게 하는 함수
    
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        
        let formmatter = DateFormatter()
        formmatter.dateFormat = "yy-mm-dd hh:mma"
        let dateString = formmatter.string(from: selectDatePicker.date)
//        departureDateBtn.setTitle(dateString, for: .normal)
        
        if btnTag == 1 {
            departureDateBtn.setTitle(dateString, for: .normal)
        }
        else {
            returnDateBtn.setTitle(dateString, for: .normal)
        }
        
    } // 데이트피커 오브젝트가 보이게 하는 함수
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
}

