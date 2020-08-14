//
//  ViewController.swift
//  SwiftExam1
//
//  Created by allabout on 2020/08/14.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var InputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SendInputBtn(_ sender: Any) {
        TextLabel.text = "Hello " + InputText.text!
    }
}

