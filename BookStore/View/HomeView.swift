//
//  HomeView.swift
//  BookStore
//
//  Created by Kiss János on 01/03/2024.
//

import SwiftUI

struct HomeView: View {
    
    let vm = HomeViewViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HeaderView
                    
                    ProductListView(productList: vm.productList1)
                    
                    Slider
                    
                    BannerView(imageURL: "banner-01")

                    
                    
                    Slider
                    
                    //ProductList
                    
                    BannerView(imageURL: "banner-02")
                    
                    ProductListView(productList: vm.productList1)
                    
                    BannerView(imageURL: "banner-03")
                    
                    //ProductList
                    
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
        HStack(alignment: .center) {
            Image("icon-menu")
                .frame(width: 50, height: 50)
            
            Image("logo-bookstore")
                .frame(width: 150, height: 50)
            
            Image("icon-search")
                .frame(width: 50, height: 50)
            
            Image("icon-user")
                .frame(width: 50, height: 50)
            
            Image("icon-shopping-bag")
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
    
    
}

struct BannerView: View {
    let imageURL: String
    
    var body: some View {
        Image(imageURL)
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.size.width)
    }
}
