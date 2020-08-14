//
//  ViewController.swift
//  SampleWebView
//
//  Created by allabout on 2020/08/14.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var WebViewMain: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlString: String = "https://www.google.com"
        if let url = URL(string: urlString) {
            let urlReq = URLRequest(url: url)
            WebViewMain.load(urlReq)
        }
        
        
    }


}

