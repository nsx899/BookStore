//
//  HomeView.swift
//  BookStore
//
//  Created by Kiss János on 01/03/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HeaderView
                    
                    Slider
                    
                    BannerView(background: .teal)

                    ProductList
                    
                    Slider
                    
                    ProductList
                    
                    BannerView(background: .mint)
                    
                    ProductList
                    
                    BannerView(background: .indigo)
                    
                    ProductList
                    
                }
                .ignoresSafeArea()
            }
        }
        
    }
}

#Preview {
    HomeView()
}

extension HomeView {
    
    private var HeaderView: some View {
        HStack {
            Rectangle()
                .frame(width: 50, height: 50)
            
            Rectangle()
                .frame(width: 150, height: 50)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Rectangle()
                .frame(width: 50, height: 50)
        }
    }
    
    private var Slider: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<5) {_ in
                    ZStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width ,height: 400)
                            .foregroundStyle(.blue)
                        
                        VStack(alignment: .center) {
                            Rectangle()
                                .frame(width: 180, height: 200)
                                .foregroundStyle(.green)
                                .padding(.bottom)
                            Text("Tade Thompson")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 2)
                            Text("""
                                 Molly Southbourne
                                 öröksége
                                 """)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 5)
                            Text("""
                                 Valahányszor Molly Southbounre
                                 vérzett, a véréből egy gyilkos
                                 született...
                                 """)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        .foregroundStyle(.white)
                    }
                }
            }
            .padding(.bottom)
        }
    }
    
    private var ProductList: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<16) {_ in
                    NavigationLink(destination: ProductDetailView()) {
                        VStack {
                            Rectangle()
                                .frame(width: (UIScreen.main.bounds.width / 2 - 8), height: 240)
                                .foregroundStyle(.black)
                            
                            VStack {
                                Text("Hangzatos könyv címe")
                                    .font(.subheadline)
                                    .bold()
                                Text("Hangzatos könyv alcíme")
                                    .font(.caption)
                                Text("Író neve")
                                    .font(.caption)
                                
                                HStack {
                                    Spacer()
                                    VStack {
                                        Text("Eredeti ár:")
                                        Text("5 990 Ft")
                                    }
                                    Spacer()
                                    VStack {
                                        Text("Online ár:")
                                        Text("4 990 Ft")
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
                                            .foregroundStyle(.black)
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
                            
                        }
                        .padding(2)
                    }
                }
            }
        }
    }
}

struct BannerView: View {
    let background: Color
    
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.size.width, height: 400)
            .foregroundStyle(background)
    }
}
