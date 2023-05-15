//
//  UIHiplatelicsUITests.swift
//  HiplatelicsUITests
//
//  Created by patelpra on 5/15/23.
//

import XCTest

final class UIHiplatelicsUITests: XCTestCase {
  
  let app = XCUIApplication()
  
  override func setUpWithError() throws {
    continueAfterFailure = false
    app.launch()
    
  }
  
  override func tearDownWithError() throws {
    
  }
  
  func testMainViewListTab() {
    app.buttons["cursorarrow.click"].tap()
    app.buttons["Next  ->"].tap()
    let tabBarList = app.tabBars["Tab Bar"].buttons["List"]
    tabBarList.tap()
    
    XCTAssert(tabBarList.exists)
  }
  
  func testMainViewBasketTab() {
    app.buttons["cursorarrow.click"].tap()
    app.buttons["Next  ->"].tap()
    let tabBarBasket = app.tabBars["Tab Bar"].buttons["Basket"]
    tabBarBasket.tap()
    
    XCTAssert(tabBarBasket.exists)
  }
  
  func testWelcomeScreenButton() {
    
    let cursorButton = app.buttons["cursorarrow.click"]
      cursorButton.tap()
      
    XCTAssert(cursorButton.exists)
  }
}
