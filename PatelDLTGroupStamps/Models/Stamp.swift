//
//  Stamp.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import Foundation

var stamp = Stamp()
var stampImages = StampImage(name: "")

struct Stamp: Codable, Hashable {
  
  struct UNStamp: Codable, Hashable, Identifiable {
    var id = UUID()
    var seller: String
    var name: String? = nil
    let description: String
    var image: String
    let price: String
  }
  
  var unitedNationsStamps = [
    UNStamp(seller: "hiplatics", name: "Vienna collector stamp", description: "UNESCO World Heritage Site I", image: "image1", price: "2.99"),
    UNStamp(seller: "hiplatics", name: "Vienna collector stamp", description: "UNESCO World Heritage Site II", image: "image2", price: "2.99"),
    UNStamp(seller: "hiplatics", name: "Vienna collector stamp", description: "Alhambra Granada Spain World Heritage", image: "image3", price: "2.19"),
    UNStamp(seller: "hiplatics", name: "Geneva collector stamp", description: "UNESCO World Heritage Site Germany", image: "image4", price: "6.99"),
    UNStamp(seller: "hiplatics", name: "Geneva collector stamp", description: "Adelie Penguin Pygoscelis", image: "image5", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "Geneva collector stamp", description: "UNESCO World Heritage Site Italy", image: "image6", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "United States collector stamp", description: "Distinguished Soldier 2nd Lt Audie Baby Murphy", image: "image7", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "Monaco collector stamp", description: "Place DE Lagare DE Monaco Vers", image: "image8", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "Vatican City collector stamp", description: "Vatican City", image: "image9", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "Geneva collector stamp", description: "UN Geneva", image: "image10", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "Israel collector stamp", description: "Tete-Beche Pair", image: "image11", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "French Morocco collector stamp", description: "Ben Smine Sanatorium", image: "image12", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "UN New York collector stamp", description: "65th Anniversary Of The United Nations", image: "image13", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "France collector stamp", description: "UNESCO World Heritage Medina Siam", image: "image14", price: "3.99"),
    UNStamp(seller: "hiplatics", name: "UN Geneva collector stamp", description: "St. Catherine Monastery", image: "image15", price: "3.99")
  ]
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


