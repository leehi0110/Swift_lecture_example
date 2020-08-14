//
//  ViewController.swift
//  TableViewExample
//
//  Created by allabout on 2020/08/14.
//  Copyright © 2020 allabout. All rights reserved.
//

// api key b4570451e069499089e383f93a7cce3b

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    var newsData: Array <Dictionary <String, Any>>?
    
    func getNews () {
        let task =  URLSession.shared.dataTask(with: URL(string: "https://newsapi.org/v2/everything?q=bitcoin&from=2020-07-14&sortBy=publishedAt&apiKey=b4570451e069499089e383f93a7cce3b")!) { (data, response, error) in
            if let dataJson = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: dataJson, options: []) as! Dictionary <String, Any>
                    print(json)
                    
                    let articles = json["articles"] as! Array <Dictionary <String, Any>>
                    
                    print(articles)
                    self.newsData = articles
                    
                    DispatchQueue.main.async {
                        self.TableViewMain.reloadData()
                    }
                }
                catch {
                    
                }
            }
        }
        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let news = newsData {
            return news.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        
        let idx = indexPath.row
        if let news = newsData {
            
            let row = news[idx]
            if let r = row as? Dictionary <String, Any> {
                if let title = r["title"] as? String {
                    cell.LabelText.text = title
                }
            }
        }
        
//        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    
    // 클릭
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Click : \(indexPath.row)")
        
        let storyboard  = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "NewsDetailController") as! NewsDetailController
        
        if let news = newsData {
            let row = news[indexPath.row]
            if let r = row as? Dictionary <String, Any> {
                if let imageUrl = r["urlToImage"] as? String {
                    controller.imageUrl = "urlToImage"
                }
                if let desc = r["description"] as? String {
                    controller.desc = "description"
                }
            }
        }
        
        showDetailViewController(controller, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier, "NewsDetail" == id {
            if let controller = segue.destination as? NewsDetailController {
                
                if let news = newsData {
                    let indexPath = sender as! IndexPath
                    let row = news[indexPath.row]
                    if let r = row as? Dictionary <String, Any> {
                        if let imageUrl = r["urlToImage"] as? String {
                            controller.imageUrl = "urlToImage"
                        }
                        if let desc = r["description"] as? String {
                            controller.desc = "description"
                        }
                    }
                }
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
        
        getNews()
    }


}

