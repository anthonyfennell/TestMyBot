//
//  TestMyBotsUITests.swift
//  TestMyBotsUITests
//
//  Created by Anthony Michael Fennell on 8/14/15.
//  Copyright © 2015 Ford Prefect. All rights reserved.
//

import Foundation
import XCTest

class TestMyBotsUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        if #available(iOS 9.0, *) {
            XCUIApplication().launch()
        } else {
            // Fallback on earlier versions
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        if #available(iOS 9.0, *) {
            
            let app = XCUIApplication()
            let enterTextTextField = app.textFields["Enter text"]
            enterTextTextField.tap()
            enterTextTextField.typeText("thank you")
            app.buttons["Done"].tap()
            app.navigationBars["UIView"].childrenMatchingType(.Button).matchingIdentifier("Back").elementBoundByIndex(0).tap()
            app.typeText("\n")
            
        }
    }
    
}
