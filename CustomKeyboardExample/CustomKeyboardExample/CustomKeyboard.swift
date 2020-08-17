//
//  CustomKeyboard.swift
//  CustomKeyboardExample
//
//  Created by allabout on 2020/08/17.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

protocol CustomKeyboardDelegate {
    func keyboardTapped(str: String)
}

class CustomKeyboard: UIView {
    
    var delegate: CustomKeyboardDelegate?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        delegate?.keyboardTapped(str: sender.titleLabel!.text!)
    }

}
