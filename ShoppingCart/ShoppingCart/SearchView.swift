//
//  SearchView.swift
//  ShoppingCart
//
//  Created by Yash on 19/07/23.
//

import SwiftUI

struct SearchView: View {
    @State var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("Search for items", text: $search)
                    .padding()
                    
            }
            .background(Color.gray.opacity(0.5))
            .cornerRadius(10)
            
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
