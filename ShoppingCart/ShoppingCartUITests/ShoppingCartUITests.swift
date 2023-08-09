//
//  ShoppingCartUITests.swift
//  ShoppingCartUITests
//
//  Created by Yash on 22/07/23.
//

import XCTest

final class ShoppingCartUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    

    func testRecordAndPlay() {

        
        let app = XCUIApplication()
        app.launch()
        app.scrollViews.otherElements.buttons["Amazon, Shopping"].tap()
        let webViewsQuery = app.webViews.webViews.webViews
        webViewsQuery/*@START_MENU_TOKEN@*/.images["Mobiles"]/*[[".otherElements[\"Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in\"]",".otherElements[\"main\"]",".links[\"Mobiles Mobiles\"].images[\"Mobiles\"]",".images[\"Mobiles\"]"],[[[-1,3],[-1,2],[-1,1,2],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.tap()
        let oneplusImage = webViewsQuery/*@START_MENU_TOKEN@*/.images["OnePlus"]/*[[".otherElements[\"Mobile Phones: Buy New Mobiles Online at Best Prices in India | Buy Cell Phones Online - Amazon.in\"].images[\"OnePlus\"]",".images[\"OnePlus\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        oneplusImage.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["OnePlus Nord 3 5G"]/*[[".otherElements[\"Mobile Phones: Buy New Mobiles Online at Best Prices in India | Buy Cell Phones Online - Amazon.in\"]",".links[\"OnePlus Nord 3 5G\"].staticTexts[\"OnePlus Nord 3 5G\"]",".staticTexts[\"OnePlus Nord 3 5G\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage)"]/*[[".otherElements[\"OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage) : Amazon.in: Electronics\"]",".otherElements[\"main\"].otherElements[\"OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage)\"]",".otherElements[\"OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage)\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.staticTexts["OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage)"].tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["from ₹1,624. No Cost EMI available."]/*[[".otherElements[\"OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage) : Amazon.in: Electronics\"]",".otherElements[\"main\"]",".staticTexts[\"om ₹1,624. No Cost EMI available. \"]",".staticTexts[\"from ₹1,624. No Cost EMI available.\"]"],[[[-1,3],[-1,2],[-1,1,2],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["main"]/*[[".otherElements[\"OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage) : Amazon.in: Electronics\"].otherElements[\"main\"]",".otherElements[\"main\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.children(matching: .button)["Add to Cart"].tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["Proceed to checkout"]/*[[".otherElements[\"OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage) : Amazon.in: Electronics\"]",".otherElements[\"HCTP attach bottom sheet\"]",".links[\"Proceed to checkout\"].buttons[\"Proceed to checkout\"]",".buttons[\"Proceed to checkout\"]"],[[[-1,3],[-1,2],[-1,1,2],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["Deliver to this address"]/*[[".otherElements.matching(identifier: \"Select a delivery address\").buttons[\"Deliver to this address\"]",".buttons[\"Deliver to this address\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["_TtGC7SwiftUI32NavigationStackHosting"].buttons["Back"].tap()
        
    }
    
}
