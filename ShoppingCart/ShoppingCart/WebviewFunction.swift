//
//  WebviewFunction.swift
//  ShoppingCart
//
//  Created by Yash on 21/07/23.
//

import SwiftUI
import WebKit

struct WebviewFunction: UIViewRepresentable {
    
    @State public var isShowingWK = true
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(
            frame: .zero,
            configuration: config
            )
        
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = url else {
            return
            
        }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
}




