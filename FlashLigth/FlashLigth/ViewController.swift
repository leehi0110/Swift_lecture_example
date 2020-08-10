//
//  ViewController.swift
//  FlashLigth
//
//  Created by allabout on 2020/08/10.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var FlashImageView: UIImageView!
    
    var isOn = false
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playSound()
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "switch.wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.prepareToPlay()
        } catch {
            //
        }
    }

    @IBAction func switchtapped(_ sender: Any) {
        isOn = !isOn
        
        soundPlayer?.play()
        
//        if isOn == true {
//            switchButton.setImage(#imageLiteral(resourceName: "onSwitch"), for: .normal)
//            FlashImageView.image = #imageLiteral(resourceName: "onBG")
//        }
//        else {
//            switchButton.setImage(#imageLiteral(resourceName: "offSwitch"), for: .normal)
//            FlashImageView.image = #imageLiteral(resourceName: "offBG")
//        }
        
        FlashImageView.image = isOn ? #imageLiteral(resourceName: "onBG") : #imageLiteral(resourceName: "offBG")
        switchButton.setImage(isOn ? #imageLiteral(resourceName: "onSwitch") : #imageLiteral(resourceName: "offSwitch"), for: .normal)

    }
    
}

