//
//  Stamp.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import Foundation

var stamp = Stamp(totalAmount: Double(), discountedAmount: Double())

struct Stamp {
  struct UNStamp: Identifiable {
    let id = UUID()
    let seller: String
    var name: String? = nil
    let description: String
    var image: String
    let price: String
  }
  
  let unitedNationsStamps = [
                             UNStamp(seller: "hiplatics", name: "Vienna stamp", description: "UNESCO World Heritage Site", image: "image1", price: "2.99"),
                             UNStamp(seller: "hiplatics", name: "Vienna  stamp", description: "UNESCO World Heritage Site", image: "image2", price: "2.99"),
                             UNStamp(seller: "hiplatics", name: "Vienna stamp", description: "Alhambra Granada Spain World Heritage", image: "image3", price: "2.19"),
                             UNStamp(seller: "hiplatics", name: "Geneva stamp", description: "UNESCO World Heritage Site Germany", image: "image4", price: "6.99")]
  
  var itemPrices = [7.00, 10.00, 20.00, 6.00, 2.00, 3.00,8.00]
  let discountPercentage = 0.10
  var totalAmount: Double
  var discountedAmount: Double
  
  init(totalAmount: Double, discountedAmount: Double) {
    self.totalAmount = itemPrices.reduce(0) { $0 + $1 }
    self.discountedAmount = totalAmount * discountPercentage
  }
}

struct JumboDiscount {
  var total = stamp.totalAmount
   
  var jumboDiscount: Double
  
  func totalAmountAfterApplyingDiscount(maximumDiscount maxDiscount: Double) -> Double {
    return abs(total * jumboDiscount - total)
  }
}

var customDiscount = JumboDiscount(jumboDiscount: Double(0.75))

let mySpecialDiscount = customDiscount.totalAmountAfterApplyingDiscount(maximumDiscount: Double())


