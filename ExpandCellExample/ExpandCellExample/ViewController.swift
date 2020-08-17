//
//  ViewController.swift
//  ExpandCellExample
//
//  Created by allabout on 2020/08/17.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ExpandCell: UITableViewCell {
    
    @IBOutlet weak var lblDescription: UILabel!
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    struct ExpandDataModel {
        var description: String
        var isExpand: Bool
    }
    
    var dataModels = [ExpandDataModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textArray = ["short text",
                         "long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text",
                         "short text",
                         "long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text",
                         "short text"]
        
        for (_, value) in textArray.enumerated() {
            dataModels.append(ExpandDataModel.init(description: value, isExpand: false))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandCell_ID", for: indexPath) as! ExpandCell
        
        cell.lblDescription.text = dataModels[indexPath.row].description
        
        if dataModels[indexPath.row].isExpand == true {
            cell.lblDescription.numberOfLines = 0
        }
        else {
            cell.lblDescription.numberOfLines = 1
        }
        
        cell.selectionStyle = .none
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModels[indexPath.row].isExpand = !dataModels[indexPath.row].isExpand
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }


}

