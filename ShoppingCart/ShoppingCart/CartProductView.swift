//
//  CartProductVidw.swift
//  ShoppingCart
//
//  Created by Yash on 19/07/23.
//

import SwiftUI
import WebKit

struct CartProductView: View {
    @State private var showingAlert = false
    @State private var isHidden = true
    @State private var currentIndex = 0
    @State private var hasTimeElasped = false
    @State private var showingWebview:Bool = false
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    let links: [String] = [
           "https://www.link1.com",
           "https://www.link2.com",
           "https://www.link3.com",
           "https://www.link4.com",
           "https://www.link5.com"
       ]

    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                
               
                
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                cartManager.removeFromCart(product: product)
            }, label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            })
            
            Button(action: {
                
                showingWebview = true
            }, label: {
                Image(systemName: "icloud.and.arrow.down")
                    .foregroundColor(.blue)
            })
            .sheet(isPresented: $showingWebview, content: {
//                VStack {
//                    NavigationLink(destination: WebView(url: URL(string: "\(links[currentIndex])")!)) {
//
//                    }
//                }
                
                WebView(url: URL(string: product.webURl)!)
            })
                                                                


        }
        .padding(.horizontal)
        .background(Color.cyan.opacity(0.26))
        .cornerRadius(12)
        .frame(width: .infinity, alignment: .leading)
        .padding()
        
        
    }
    
    private func delayScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            hasTimeElasped = true
        }
    }
}

struct CartProductVidw_Previews: PreviewProvider {
    static var previews: some View {
        CartProductView(product: productList[2])
            .environmentObject(CartManager())
    }
}


struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

