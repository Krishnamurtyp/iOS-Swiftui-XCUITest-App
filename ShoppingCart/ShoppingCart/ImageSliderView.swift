//
//  ImageSliderView.swift
//  ShoppingCart
//
//  Created by Yash on 19/07/23.
//

import SwiftUI

struct ImageSliderView: View {
    
    @State private var currentIndex = 0
    
    var slides: [String] = ["fn1","fn2","fn3","fn4","fn5","fn6","fn7","fn8","fn9","fn10"]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 200)
                    .cornerRadius(10)
                    .scaledToFit()
            }
            HStack {
                ForEach(0..<slides.count) {index in
                    Circle()
                        .fill(self.currentIndex == index ? Color.gray : Color.white)
                        .frame(width: 10, height: 10 )
                    
                }
            }
            .padding()
            
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: { timer in
            if self.currentIndex + 1 == self.slides.count {
                self.currentIndex = 0
            }else {
                self.currentIndex += 1
            }
        })
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
