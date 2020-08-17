//
//  ViewController.swift
//  MiniBrowserExample
//
//  Created by allabout on 2020/08/17.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {

    @IBOutlet weak var bookMarkSegmentedControll: UISegmentedControl!
    @IBOutlet weak var URLTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spiningActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string: initialURL)
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        URLTextField.text = initialURL
        mainWebView.navigationDelegate = self
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spiningActivityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spiningActivityIndicator.stopAnimating()
    }
    
    @IBAction func bookMarkAction(_ sender: Any) {
        
        let bookMarkURL = bookMarkSegmentedControll.titleForSegment(at: bookMarkSegmentedControll.selectedSegmentIndex)!
        
        let urlString = "https://www.\(bookMarkURL).com"
        URLTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(URLTextField.text!)"
        
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(URLTextField.text!)"
        }
        URLTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }

    @IBAction func GoAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func BackAction(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func StopAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload()
    }
//
    
}

