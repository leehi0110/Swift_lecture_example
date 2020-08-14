//
//  ViewController.swift
//  SwiftExample3
//
//  Created by allabout on 2020/08/14.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector : Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    let count = 0
    
    @IBOutlet weak var lblNowTimes: UILabel!
    @IBOutlet weak var lblSelectTimes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func UIDatePicker(_ sender: UIDatePicker) {
        let datePickView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblSelectTimes.text = "선택한 시간: " + formatter.string(from: datePickView.date)
    }

    @objc func updateTime () {
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        lblNowTimes.text = "현재시간: " + formatter.string(from: date as Date)
    }
}

