//
//  book.swift
//  BookManager
//
//  Created by allabout on 2020/08/11.
//  Copyright © 2020 allabout. All rights reserved.
//

import Foundation

struct Book {
    var name: String
    var genre: String
    var author: String
    
    func bookPrint() {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
        print("--------------")
    }
}
