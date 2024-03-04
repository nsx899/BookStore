//
//  Book.swift
//  BookStore
//
//  Created by Kiss János on 03/03/2024.
//

import Foundation

struct Book: Identifiable {
    let id: UUID
    
    let name: String
    let subname: String
    let imgURL: String
    let author: String
    
    let retailPrice: Int
    let onlinePrice: Int
}
