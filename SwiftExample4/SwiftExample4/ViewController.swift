//
//  ViewController.swift
//  SwiftExample4
//
//  Created by allabout on 2020/08/15.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let maxArrayNum = 3
    let pickerViewColumn = 1
    let pickerViewHeight:CGFloat =  80 // CGFloat란 운영체제에 맞게 타입설정
    var imageArray = [UIImage?]()
    var imageFileName = ["김자인", "손흥민", "이정후"]

    @IBOutlet weak var PickerImage: UIPickerView!
    @IBOutlet weak var lblSelectPerson: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<maxArrayNum {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblSelectPerson.text = imageFileName[0]
        ImageView.image = imageArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerViewColumn
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return pickerViewHeight
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 80) // 이미지 뷰의 프레임 크기 설정
        
        return imageView
    }
    
    // 피커 뷰가 선택되었을 때 실행
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblSelectPerson.text = imageFileName[row]
        ImageView.image = imageArray[row]
    }


}

