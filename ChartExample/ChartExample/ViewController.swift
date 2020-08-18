//
//  ViewController.swift
//  ChartExample
//
//  Created by allabout on 2020/08/18.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    func changeMutiplier(value: CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint.init(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: value, constant: self.constant)
        
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        
        return newConstraint
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var graph1Height: NSLayoutConstraint!
    @IBOutlet weak var graph2Height: NSLayoutConstraint!
    @IBOutlet weak var graph3Height: NSLayoutConstraint!
    @IBOutlet weak var graph4Height: NSLayoutConstraint!
    @IBOutlet weak var graph5Height: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func style1Action(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMutiplier(value: 0.9)
            self.graph2Height = self.graph2Height.changeMutiplier(value: 0.8)
            self.graph3Height = self.graph3Height.changeMutiplier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMutiplier(value: 0.6)
            self.graph5Height = self.graph5Height.changeMutiplier(value: 0.5)
            
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func style2Action(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMutiplier(value: 0.5)
            self.graph2Height = self.graph2Height.changeMutiplier(value: 0.6)
            self.graph3Height = self.graph3Height.changeMutiplier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMutiplier(value: 0.8)
            self.graph5Height = self.graph5Height.changeMutiplier(value: 0.9)
            
            self.view.layoutIfNeeded()
        }
    }
}

