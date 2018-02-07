//
//  TestCaseUITests.swift
//  TestCaseUITests
//
//  Created by Sachin Kumaram on 1/31/18.
//  Copyright © 2018 SK. All rights reserved.
//

import XCTest

class TestCaseUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExampleFor3() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let textField = app.otherElements.containing(.staticText, identifier:"Enter any no.").children(matching: .textField).element
        textField.tap()
        textField.typeText("3")
        app.buttons["Submit"].tap()
       
        
    }
    
    func testExampleFor5() {
        
        let app = XCUIApplication()
        let textField = app.otherElements.containing(.staticText, identifier:"Enter any no.").children(matching: .textField).element
        textField.tap()
        textField.typeText("5")
        app.buttons["Submit"].tap()
        
        
    }
    
    
    func testExampleFor15() {
        
        
        let app = XCUIApplication()
        app.otherElements.containing(.staticText, identifier:"Enter any no.").children(matching: .textField).element.typeText("15")
        app.buttons["Submit"].tap()
       
        
        
    }
    
    func testExampleFor1() {
        
        
        let app = XCUIApplication()
        let textField = app.otherElements.containing(.staticText, identifier:"Enter any no.").children(matching: .textField).element
        textField.tap()
        textField.typeText("1")
        app.buttons["Submit"].tap()
        
    }
    
    
}
