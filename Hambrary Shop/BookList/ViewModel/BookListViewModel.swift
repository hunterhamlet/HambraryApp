//
//  LoginViewModel.swift
//  Hambrary Shop
//
//  Created by Hamon on 19/01/22.
//

import Foundation

class LoginViewModel {
    
    private var bookList: [Book] = []
    
    init() {
        setBookList()
    }
    
    private func setBookList() {
        bookList.append(Book(title: "Los juegos del hambre 1", author: "Hamon", year: "2005"))
        bookList.append(Book(title: "Los juegos del hambre 2", author: "Hamon", year: "2008"))
        bookList.append(Book(title: "Los juegos del hambre 3", author: "Hamon", year: "2010"))
    }
    
    func getBookList() -> [Book] {
        return bookList
    }
    
    
}
