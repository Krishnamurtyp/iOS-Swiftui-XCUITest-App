//
//  ProductCardView.swift
//  ShoppingCart
//
//  Created by Yash on 19/07/23.
//

import SwiftUI

struct ProductCardView: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.8)
            
            ZStack(alignment: .bottomTrailing) {
            
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(15)
                    
                    Text(product.name)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.vertical, 1)
                        
                    Text(product.supplier)
                        .foregroundColor(.black.opacity(0.7))
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    
                  
                        
                  
                }
             Button(action: {
                 
                 cartManager.addToCart(product: product)
             }, label: {
                 Image(systemName: "plus.circle.fill")
                     .resizable()
                     .foregroundColor(Color.black)
                     .frame(width: 35, height: 35)
                     .padding(.trailing)
                     
             })
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(15)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productList[0])
            .environmentObject(CartManager())
    }
}
