//
//  Stamp.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import Foundation

var stampImages = StampImage(name: "")

struct Stamp: Identifiable, Hashable, Codable {
  var id: Int
  var itemId: String
  var title: String
  var description: String? = nil
  var price: String
  var categoryPath: String
  var categoryIdPath: String
  var image: String

  static let example = Stamp(id: 1, itemId: "v1|234538549768|0", title: "UN Geneva #Mi402 MNH 2000 Alhambra Granada Spain World Heritage 1984 [364b]", price: "1.99", categoryPath: "Stamps|Worldwide|United Nations", categoryIdPath: "", image: "")
}

// MARK: Assignment 2
enum StampError: Error {
  case badURLRequest
  case invalidResponse
  case invalidData
  case encodingError
}


struct StampImage: Identifiable {
  var id = UUID()
  var name: String
}

let stampImage = (1...15).map { StampImage(name: "image\($0)") }

struct StampDiscount {
  
  var itemPrices = [7.00, 10.00, 20.00, 6.00, 2.00, 3.00, 8.00]
  var discountPercentage = 0.10
  var totalAmount: Double
  var discountedAmount: Double
  
  init(totalAmount: Double, discountedAmount: Double) {
    self.totalAmount = itemPrices.reduce(0) { $0 + $1 }
    self.discountedAmount = totalAmount * discountPercentage
  }
  
  func totalAmountAfterApplyingDiscount(maximumDiscount maxDiscount: Double) -> Double {
    return abs(totalAmount * discountedAmount - totalAmount)
  }
}
