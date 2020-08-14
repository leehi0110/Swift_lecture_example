//
//  ViewController.swift
//  SwiftExample2
//
//  Created by allabout on 2020/08/14.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstImage: UIImage?
    var secondImage: UIImage?
    var thirdImage: UIImage?
    
    var nowImage: Int = 1
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstImage = UIImage(named: "image1.jpg")
        secondImage = UIImage(named: "image2.jpg")
        thirdImage = UIImage(named: "image3.jpg")
        
        ImageView.image = firstImage
    }
    
    @IBAction func BackBtn(_ sender: Any) {
        switch nowImage {
        case 1:
            nowImage = 3
            ImageView.image = thirdImage
        case 2:
            nowImage = 1
            ImageView.image = firstImage
        default:
            nowImage = 2
            ImageView.image = secondImage
        }
    }

    @IBAction func NextBtn(_ sender: Any) {
        switch nowImage {
        case 1:
            nowImage = 2
            ImageView.image = secondImage
        case 2:
            nowImage = 3
            ImageView.image = thirdImage
        default:
            nowImage = 1
            ImageView.image = firstImage
        }
    }
    

}

