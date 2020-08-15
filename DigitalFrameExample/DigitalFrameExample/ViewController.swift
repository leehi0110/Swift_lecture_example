//
//  ViewController.swift
//  DigitalFrameExample
//
//  Created by allabout on 2020/08/15.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var toggleBtn: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var lblSpeed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sportsImages = [UIImage(named: "손흥민.jpg")!,
                            UIImage(named: "리버풀.jpg")!,
                            UIImage(named: "맨시티.jpg")!,
                            UIImage(named: "메시.jpg")!,
                            UIImage(named: "박지성.jpg")!,
                            UIImage(named: "아게로.jpg")!,
                            UIImage(named: "제이미.jpg")!,
                            UIImage(named: "해리케인.jpg")!
                            ]
        
        
        ImgView.animationImages = sportsImages
        lblSpeed.text = String(Int(speedSlider.value))
        ImgView.animationDuration = 8
    }

    @IBAction func startBtn(_ sender: Any) {
        if ImgView.isAnimating {
            ImgView.stopAnimating()
            toggleBtn.setTitle("Start", for: .normal)
        }
        else {
            ImgView.animationDuration = Double(speedSlider.value)
            lblSpeed.text = String(Int(speedSlider.value))
            ImgView.startAnimating()
            toggleBtn.setTitle("Stop", for: .normal)
        }
    }
    
    @IBAction func speedSliderAction(_ sender: Any) {
        ImgView.animationDuration = Double(speedSlider.value)
        lblSpeed.text = String(Int(speedSlider.value))
        ImgView.startAnimating()
        toggleBtn.setTitle("Stop", for: .normal)
    }
}

