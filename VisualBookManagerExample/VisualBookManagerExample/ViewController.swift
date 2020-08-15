//
//  ViewController.swift
//  VisualBookManagerExample
//
//  Created by allabout on 2020/08/15.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var AuthorTextField: UITextField!
    @IBOutlet weak var GenreTextField: UITextField!
    @IBOutlet weak var lblNumberOfBooks: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "해밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")

        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        lblNumberOfBooks.text = String(myBookManager.countBooks())

    }
    @IBAction func RemoveAction(_ sender: Any) {
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!) removed"
        lblNumberOfBooks.text = String(myBookManager.countBooks())
    }
    
    @IBAction func SearchAction(_ sender: Any) {
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        
        if resultBook != nil {
            outputTextView.text = resultBook
        }
        else {
            outputTextView.text = "We don't have the book you search"
        }
    }
    
    @IBAction func registerAction(_ sender: Any) {
        var bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.author = AuthorTextField.text!
        bookTemp.genre = GenreTextField.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTextField.text!) is registered"
        
        lblNumberOfBooks.text = String(myBookManager.countBooks())
    }

    @IBAction func showAllBookAction (_ Sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }

}

