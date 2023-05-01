//
//  Stamp.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import Foundation

var stamp = Stamp(totalAmount: Double(), discountedAmount: Double())

struct Stamp {
  
  let discountPercentage = 0.10
  var itemPrices = [7.00,
                    10.00,
                    20.00,
                    6.00,
                    2.00,
                    3.00,
                    8.00]
  
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


