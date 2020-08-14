//
//  NewsDetailController.swift
//  TableViewExample
//
//  Created by allabout on 2020/08/14.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class NewsDetailController: UIViewController {
    
    @IBOutlet weak var ImageMain: UIImageView!
    
    @IBOutlet weak var LabelMain: UILabel!
    
    var imageUrl: String?
    var desc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let img = imageUrl {
            // 이미지를 가져와서 뿌린다

            if let data = try? Data(contentsOf: URL(string: img)!) {
                
                DispatchQueue.main.async {
                    self.ImageMain.image = UIImage(data: data)
                }
            }
        }
        
        if let d = desc {
            // 뉴스 본문을 보여준다
            self.LabelMain.text = d
        }
    }
}
