//
//  ViewController.swift
//  popUpExample
//
//  Created by allabout on 2020/08/18.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showPopUpAction(_ sender: Any) {
        
        let storyBoard = UIStoryboard.init(name: "PopUpView", bundle: nil)
        
        let popupVC = storyBoard.instantiateViewController(identifier: "popupVC")
        popupVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popupVC, animated: false, completion: nil)
    }
}

