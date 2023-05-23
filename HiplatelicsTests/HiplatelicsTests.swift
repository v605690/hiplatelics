//
//  HiplatelicsTests.swift
//  HiplatelicsTests
//
//  Created by patelpra on 5/14/23.
//

import XCTest
@testable import Hiplatelics

final class HiplatelicsTests: XCTestCase {
  var stamp: Stamp!
  var unstamp: Stamp.UNStamp!
  var itemPrices = StampDiscount(totalAmount: Double(), discountedAmount: Double())
  var stampDiscount = StampDiscount(totalAmount: Double(), discountedAmount: Double())
  
  override func setUpWithError() throws {
    stamp = Stamp()
  }
  
  override func tearDownWithError() throws {
    stamp = nil
  }
  
  func testArrayCapacity() {
    let totalStamps = 15
    let stampArray = stamp.unitedNationsStamps.capacity
    
    XCTAssertEqual(totalStamps, stampArray)
    XCTAssert(stampArray == 15)
    XCTAssertFalse(stampArray == 14)
  }
  
  func testStampSeller() {
    let unstamp: String = "hiplatelics"
      
    XCTAssert(unstamp.contains("hip"))
    XCTAssertFalse(unstamp.contains("Hiplatelics"))
  }
  
  func testTotalAmount() {
    let total = itemPrices.totalAmount
    
    XCTAssert(total.isEqual(to: 56.00))
    XCTAssertFalse(total.isEqual(to: 6.00))
  }
  
  func testDiscount() {
    var discount = 0.10
    discount = stampDiscount.discountPercentage

    XCTAssert(discount.isEqual(to: 0.10))
    XCTAssertFalse(discount.isEqual(to: 0.25))
    XCTAssertEqual(discount, 0.10)
  }
  
  func testStampsPListURL() {
    let url = stampsPListURL
    
    XCTAssert(url.isFileURL)
  }
  
  func testFileManager() {
    let fileManager = FileManager.documentsDirectoryURL
    
    XCTAssert(fileManager.hasDirectoryPath)
  }
}
