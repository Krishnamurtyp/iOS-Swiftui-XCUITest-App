//
//  CartView.swift
//  ShoppingCart
//
//  Created by Yash on 19/07/23.
//

import SwiftUI
import WebKit


struct CartView: View {
    
  
    
    @EnvironmentObject var cartManager: CartManager
    
    var productListView: Product
    
    
    var body: some View {
        
//        VStack(spacing: 40) {
//            WebView(url: URL(string: productListView.url)!).frame(height: 500)
//                .cornerRadius(10)
//                .shadow(color: .black.opacity(0.3), radius: 20, x: 5, y: 5)
//            
//            Link(destination: URL(string: productListView.url)!) {
//                
//            }
//        } .accessibility(hidden: isHidden)
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    
                    CartProductView(product: product)
                }
               
                
                
                Button(action: {
                 
                }, label: {
                    Text("Use Now...")
                        .foregroundColor(.white)
                        .font(.headline)
                        .bold()
                })
                .frame(width: 160, height: 40)
                .background(Color.black)
                .cornerRadius(10)
                
               
            } else {
                Text("Oopsss! Your Cart is Empty..")
                    .font(.largeTitle.bold())
                    .bold()
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        
     
    }
}

//struct CartView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartView()
//            .environmentObject(CartManager())
//    }
//}
