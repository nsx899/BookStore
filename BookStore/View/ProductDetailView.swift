//
//  ProductDetailView.swift
//  BookStore
//
//  Created by Kiss János on 01/03/2024.
//

import SwiftUI

struct ProductDetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            Image(book.imgURL)
                .resizable()
                .scaledToFit()
            .frame(width: UIScreen.main.bounds.width * 0.7)
            
            Text(book.name)
                .font(.title)
                .bold()
            
            Text(book.subname)
            
            Text(book.author)
                .font(.headline)
                .foregroundStyle(.gray)
            
            HStack {
                Spacer()
                VStack {
                    Text("Eredeti ár:")
                    Text("\(book.retailPrice) Ft")
                        .strikethrough()
                }
                .foregroundStyle(.gray)
                Spacer()
                VStack {
                    Text("Online ár:")
                    Text("\(book.onlinePrice) Ft")
                        .font(.subheadline)
                        .bold()
                }
                Spacer()
            }
            .padding(.top, 8)
            .font(.callout)
            
        }
        
    }
}

#Preview {
    ProductDetailView(book: Book(id: UUID(), name: "Tündermese", subname: "", imgURL: "01-stephen-king-tundermese", author: "Stephen King", retailPrice: 6999, onlinePrice: 5249))
}
