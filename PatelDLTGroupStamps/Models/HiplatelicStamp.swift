//
//  hiplatelicStamp.swift
//  Hiplatelics
//
//  Created by patelpra on 5/26/23.
//

import Foundation


import Foundation

// MARK: - WelcomeElement
struct HiplatelicStamp: Codable {
  let itemID, sellerItemRevision, title: String
  let price: Price
  let categoryPath: CategoryPath
  let itemWebURL: String
  
  static let example = HiplatelicStamp(itemID: "v1|234538549768|0", sellerItemRevision: "8", title: "UN Geneva #Mi402 MNH 2000 Alhambra Granada Spain World Heritage 1984 [364b]", price: Price(value: "1.99", currency: Currency(rawValue: "USD")!), categoryPath: CategoryPath(rawValue: "Stamps|Worldwide|United Nations")!, itemWebURL: "image5")
  
    enum CodingKeys: String, CodingKey {
      case itemID = "itemId"
      case sellerItemRevision, title, price, categoryPath
      case itemWebURL = "itemWebUrl"
    }
  }

    enum CategoryPath: String, Codable {
      case stampsWorldwideUnitedNations = "Stamps|Worldwide|United Nations"
  }

// MARK: - Price
  struct Price: Codable {
    let value: String
    let currency: Currency
  }

  enum Currency: String, Codable {
    case usd = "USD"
  }

typealias hipStamp = [HiplatelicStamp]

