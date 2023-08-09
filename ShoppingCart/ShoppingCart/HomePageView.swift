//
//  HomePageView.swift
//  ShoppingCart
//
//  Created by Yash on 19/07/23.
//

import SwiftUI

struct HomePageView: View {
    @State private var showingWebview:Bool = false
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                   AppBar()
                    SearchView()
                    
                    ImageSliderView()
                    HStack {
                        Text("New Products")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image(systemName: "circle.grid.2x2.fill")
                        
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productList, id: \.id) {product in
                                NavigationLink{
                                    WebView(url: URL(string: "https://www.amazon.in")!)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                }
               
                
                
            }
        }
        .environmentObject(cartManager)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Delhi, India")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView( productListView: productList[0])
                        .environmentObject(cartManager)
                    ) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                    
                    
                }
                Text("Find the Most \nLuxurious")
                    .font(.largeTitle.bold())
                    
                + Text(" Items")
                    .font(.largeTitle.bold())
                    .foregroundColor(Color.red.opacity(0.8))
            }
        }
        .padding(.horizontal)
        .environmentObject(CartManager())
    }
}
