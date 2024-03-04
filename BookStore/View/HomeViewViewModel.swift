//
//  HomeViewViewModel.swift
//  BookStore
//
//  Created by Kiss János on 03/03/2024.
//

import Foundation

class HomeViewViewModel {
    
    var productList1: [Book] = []
    var productList2: [Book] = []
    
    var highlightedProduct: Book?
    
    
    init() {
        loadProductLists()
        loadHighlightedProduct()
    }
    
    private func loadHighlightedProduct() {
        self.highlightedProduct = Book(id: UUID(), name: "Maradj motivált", subname: "Gyakorlati útmutató, hogy miként vegyél lendületet és tartsd fenn a motivációd hosszú távon", imgURL: "07-maradj-motivalt", author: "Thibaut Meurisse", retailPrice: 5990, onlinePrice: 5391)
    }
    
    private func loadProductLists() {
        self.productList1 = [
            Book(id: UUID(), name: "Tündermese", subname: "", imgURL: "01-stephen-king-tundermese", author: "Stephen King", retailPrice: 6999, onlinePrice: 5249),
            Book(id: UUID(), name: "Sárga", subname: "", imgURL: "06-rf-kuang-sarga", author: "R. F. Kuang", retailPrice: 4980, onlinePrice: 4482),
            Book(id: UUID(), name: "Minél véresebb", subname: "", imgURL: "02-stephen-king-minel-veresebb", author: "Stephen King", retailPrice: 4699, onlinePrice: 3524),
            Book(id: UUID(), name: "Ubik", subname: "", imgURL: "03-philip-k-dick-ubik", author: "Philip K. Dick", retailPrice: 3280, onlinePrice: 1290),
            Book(id: UUID(), name: "Sötét anyag", subname: "", imgURL: "04-blake-crouch-sotet-anyag", author: "Blake Crouch", retailPrice: 4480, onlinePrice: 3584),
            Book(id: UUID(), name: "Földönkívüli - Egy idegen civilizáció első nyomai", subname: "", imgURL: "05-avi-loeb-foldonkivuli", author: "Avi Loeb", retailPrice: 3480, onlinePrice: 2784)
        ]
    }
    
}
