//
//  Product.swift
//  ShoppingCart
//
//  Created by Yash on 18/07/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var url: String
    var supplier: String
    var webURl: String
    
}

var productList = [
    Product(name: "Amazon", image: "fn1", url: "https://apps.apple.com/in/app/amazon-india-shop-pay-minitv/id1478350915", supplier: "Shopping", webURl: "https://www.amazon.in"),
//    Product(name: "Flipkart", image: "fn2", url: "https://apps.apple.com/in/app/flipkart-online-shopping-app/id742044692", supplier: "Shopping", webURl: "https://www.flipkart.com"),
//    Product(name: "Zomato", image: "fn3", url: "https://apps.apple.com/in/app/zomato-food-delivery-dining/id434613896", supplier: "Food", webURl: "https://www.zomato.com"),
//    Product(name: "Redbus", image: "fn4",url: "https://apps.apple.com/in/app/redbus-bus-booking-app/id733712604", supplier: "Travel", webURl: "https://www.redbus.com"),
//    Product(name: "Swiggy", image: "fn5",url: "https://apps.apple.com/in/app/swiggy-food-grocery-delivery/id989540920", supplier: "Food", webURl: "https://www.swiggy.com"),
//    Product(name: "Ajio", image: "fn6",url: "https://apps.apple.com/in/app/ajio-online-shopping-app/id1113425372", supplier: "Shopping", webURl: "https://www.ajio.com"),
//    Product(name: "MakeMyTrip", image: "fn7", url: "https://apps.apple.com/in/app/makemytrip-flight-hotel-bus/id530488359", supplier: "Travel", webURl: "https://www.makemytrip.com")
//   
    

]
