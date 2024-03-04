//
//  ProductListView.swift
//  BookStore
//
//  Created by Kiss János on 04/03/2024.
//

import SwiftUI

struct ProductListView: View {
    
    let productList: [Book]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .firstTextBaseline, spacing: 20) {
                ForEach(productList) {book in
                    NavigationLink(destination: ProductDetailView(book: book)) {
                        VStack {
                            Image(book.imgURL)
                                .resizable()
                                //.aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                //.frame(width: (UIScreen.main.bounds.width / 2 - 8), height: 240)
                                .frame(height: 240)
                            
                            VStack {
                                Text(book.name)
                                    .font(.headline)
                                    .bold()
                                Text(book.subname)
                                    .font(.caption)
                                Text(book.author)
                                    .font(.caption)
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
                                .font(.caption)
                                
                                HStack {
                                    Spacer()
                                    Button {
                                        
                                    } label: {
                                        Text("Kedvencem")
                                            
                                            .font(.caption)
                                            
                                    }
                                    Spacer()
                                    Button {
                                        
                                    } label: {
                                        Text("Kosárba")
                                            .foregroundStyle(.orange)
                                            .font(.caption)
                                            .bold()
                                            
                                    }
                                    Spacer()
                                }
                                .padding(.top, 5)
                                
                                

                            }
                            .foregroundStyle(.black)
                            
                        }
                        .padding(2)
                        .frame(maxWidth: UIScreen.main.bounds.width / 2)
                    }
                }
            }
        }
    }
}

#Preview {
    
    ProductListView(productList: [
        Book(id: UUID(), name: "Földönkívüli - Egy idegen civilizáció első nyomai", subname: "", imgURL: "05-avi-loeb-foldonkivuli", author: "Avi Loeb", retailPrice: 3480, onlinePrice: 2784),
        Book(id: UUID(), name: "Tündermese", subname: "", imgURL: "01-stephen-king-tundermese", author: "Stephen King", retailPrice: 6999, onlinePrice: 5249),
        Book(id: UUID(), name: "Sárga", subname: "", imgURL: "06-rf-kuang-sarga", author: "R. F. Kuang", retailPrice: 4980, onlinePrice: 4482),
        Book(id: UUID(), name: "Minél véresebb", subname: "", imgURL: "02-stephen-king-minel-veresebb", author: "Stephen King", retailPrice: 4699, onlinePrice: 3524)
        
    ]
    )
}
