//
//  hiplatelicStamp.swift
//  Hiplatelics
//
//  Created by patelpra on 5/26/23.
//

import Foundation

//struct HiplatelicStamp: Codable {
//  let id: String
//  let title: String
//  let value: String
//  let categoryPath: String
//  let categoryIdPath: String
//  let description: String
//
//  static let example = HiplatelicStamp(id: "v1|234538549768|0", title: "UN Geneva #Mi402 MNH 2000 Alhambra Granada Spain World Heritage 1984 [364b]", value: "1.99", categoryPath: "Stamps|Worldwide|United Nations", categoryIdPath: "260|181420|3515",  description: "A Stamp Company")
//
//    enum CodingKeys: String, CodingKey {
//      case id = "itemId"
//      case title
//      case value
//      case categoryPath
//      case categoryIdPath
//      case description
//    }
//  }

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

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
//
//// MARK: - EstimatedAvailability
//struct EstimatedAvailability: Codable {
//    let deliveryOptions: [DeliveryOption]
//    let estimatedAvailabilityStatus: EstimatedAvailabilityStatus
//    let estimatedAvailableQuantity, estimatedSoldQuantity: Int
//}
//
//enum DeliveryOption: String, Codable {
//    case shipToHome = "SHIP_TO_HOME"
//}
//
//enum EstimatedAvailabilityStatus: String, Codable {
//    case inStock = "IN_STOCK"
//}

//// MARK: - Image
//  struct Image: Codable {
//    let imageURL: String
//    
//    enum CodingKeys: String, CodingKey {
//      case imageURL = "imageUrl"
//    }
//  }

//enum ItemCreationDate: String, Codable {
//    case the20220504T173453000Z = "2022-05-04T17:34:53.000Z"
//}
//
//// MARK: - ItemLocation
//struct ItemLocation: Codable {
//    let city: City
//    let stateOrProvince: StateOrProvince
//    let postalCode: PostalCode
//    let country: Country
//}
//
//enum City: String, Codable {
//    case conroe = "Conroe"
//}
//
//enum Country: String, Codable {
//    case us = "US"
//}
//
//enum PostalCode: String, Codable {
//    case the773 = "773**"
//}
//
//enum StateOrProvince: String, Codable {
//    case texas = "Texas"
//}
//
//enum ListingMarketplaceID: String, Codable {
//    case ebayUs = "EBAY_US"
//}
//
//// MARK: - LocalizedAspect
//struct LocalizedAspect: Codable {
//    let type: LocalizedAspectType
//    let name: LocalizedAspectName
//    let value: Value
//}
//
//enum LocalizedAspectName: String, Codable {
//    case certification = "Certification"
//    case grade = "Grade"
//    case placeOfOrigin = "PlaceOfOrigin"
//    case quality = "Quality"
//    case type = "Type"
//}
//
//enum LocalizedAspectType: String, Codable {
//    case string = "STRING"
//}
//
//enum Value: String, Codable {
//    case miniatureSheet = "Miniature Sheet"
//    case mintNeverHingedMNH = "Mint Never Hinged/MNH"
//    case postage = "Postage"
//    case switzerland = "Switzerland"
//    case uncertified = "Uncertified"
//    case ungraded = "Ungraded"
//}
//
//// MARK: - PaymentMethod
//struct PaymentMethod: Codable {
//    let paymentMethodType: PaymentMethodType
//    let paymentMethodBrands: [PaymentMethodBrand]
//}
//
//// MARK: - PaymentMethodBrand
//struct PaymentMethodBrand: Codable {
//    let paymentMethodBrandType: PaymentMethodBrandType
//}
//
//enum PaymentMethodBrandType: String, Codable {
//    case americanExpress = "AMERICAN_EXPRESS"
//    case applePay = "APPLE_PAY"
//    case discover = "DISCOVER"
//    case googlePay = "GOOGLE_PAY"
//    case mastercard = "MASTERCARD"
//    case paypal = "PAYPAL"
//    case visa = "VISA"
//}
//
//enum PaymentMethodType: String, Codable {
//    case creditCard = "CREDIT_CARD"
//    case wallet = "WALLET"
//}

// MARK: - Price
  struct Price: Codable {
    let value: String
    let currency: Currency
  }

  enum Currency: String, Codable {
    case usd = "USD"
  }

//// MARK: - ReturnTerms
//struct ReturnTerms: Codable {
//    let returnsAccepted: Bool
//    let refundMethod: RefundMethod
//    let returnMethod: ReturnMethod
//    let returnShippingCostPayer: ReturnShippingCostPayer
//    let returnPeriod: ReturnPeriod
//}
//
//enum RefundMethod: String, Codable {
//    case moneyBack = "MONEY_BACK"
//}
//
//enum ReturnMethod: String, Codable {
//    case replacement = "REPLACEMENT"
//}
//
//// MARK: - ReturnPeriod
//struct ReturnPeriod: Codable {
//    let value: Int
//    let unit: Unit
//}
//
//enum Unit: String, Codable {
//    case calendarDay = "CALENDAR_DAY"
//}
//
//enum ReturnShippingCostPayer: String, Codable {
//    case seller = "SELLER"
//}

// MARK: - Seller
//struct Seller: Codable {
//    let username: Username
//    let feedbackPercentage: String
//    let feedbackScore: Int
//}
//
//enum Username: String, Codable {
//    case hiplatelics = "hiplatelics"
//}

//// MARK: - ShipToLocations
//struct ShipToLocations: Codable {
//    let regionIncluded, regionExcluded: [RegionCluded]
//}
//
//// MARK: - RegionCluded
//struct RegionCluded: Codable {
//    let regionName: RegionName
//    let regionType: RegionExcludedRegionType
//    let regionID: RegionID
//
//    enum CodingKeys: String, CodingKey {
//        case regionName, regionType
//        case regionID = "regionId"
//    }
//}

//enum RegionID: String, Codable {
//    case bb = "BB"
//    case by = "BY"
//    case gf = "GF"
//    case gp = "GP"
//    case ly = "LY"
//    case mq = "MQ"
//    case nc = "NC"
//    case pf = "PF"
//    case re = "RE"
//    case ru = "RU"
//    case ua = "UA"
//    case ve = "VE"
//    case worldwide = "WORLDWIDE"
//}
//
//enum RegionName: String, Codable {
//    case barbados = "Barbados"
//    case belarus = "Belarus"
//    case frenchGuiana = "French Guiana"
//    case frenchPolynesia = "French Polynesia"
//    case guadeloupe = "Guadeloupe"
//    case libya = "Libya"
//    case martinique = "Martinique"
//    case newCaledonia = "New Caledonia"
//    case reunion = "Reunion"
//    case russianFederation = "Russian Federation"
//    case ukraine = "Ukraine"
//    case venezuela = "Venezuela"
//    case worldwide = "Worldwide"
//}
//
//enum RegionExcludedRegionType: String, Codable {
//    case country = "COUNTRY"
//    case worldwide = "WORLDWIDE"
//}
//
//// MARK: - ShippingOption
//struct ShippingOption: Codable {
//    let shippingServiceCode: String
//    let shippingCarrierCode: ShippingCarrierCode
//    let type: ShippingOptionType
//    let shippingCost: Price
//    let quantityUsedForEstimate: Int
//    let minEstimatedDeliveryDate: MinEstimatedDeliveryDate
//    let maxEstimatedDeliveryDate: MaxEstimatedDeliveryDate
//    let additionalShippingCostPerUnit: Price
//    let shippingCostType: ShippingCostType
//}
//
//enum MaxEstimatedDeliveryDate: String, Codable {
//    case the20220825T100000000Z = "2022-08-25T10:00:00.000Z"
//}
//
//enum MinEstimatedDeliveryDate: String, Codable {
//    case the20220822T100000000Z = "2022-08-22T10:00:00.000Z"
//}
//
//enum ShippingCarrierCode: String, Codable {
//    case eBaySend = "eBay Send"
//}
//
//enum ShippingCostType: String, Codable {
//    case fixed = "FIXED"
//}
//
//enum ShippingOptionType: String, Codable {
//    case standardShipping = "Standard Shipping"
//}
//
//// MARK: - Tax
//struct Tax: Codable {
//    let taxJurisdiction: TaxJurisdiction
//    let taxType: TaxType
//    let shippingAndHandlingTaxed, includedInPrice, ebayCollectAndRemitTax: Bool
//}
//
//// MARK: - TaxJurisdiction
//struct TaxJurisdiction: Codable {
//    let region: Region
//    let taxJurisdictionID: String
//
//    enum CodingKeys: String, CodingKey {
//        case region
//        case taxJurisdictionID = "taxJurisdictionId"
//    }
//}
//
//// MARK: - Region
//struct Region: Codable {
//    let regionName: String
//    let regionType: RegionRegionType
//}
//
//enum RegionRegionType: String, Codable {
//    case stateOrProvince = "STATE_OR_PROVINCE"
//}
//
//enum TaxType: String, Codable {
//    case stateSalesTax = "STATE_SALES_TAX"
//}
//
/// MARK: - Warning
//struct Warning: Codable {
//    let errorID: Int
//    let domain: Domain
//    let category: Category
//    let message: String
//    let parameters: [Parameter]
//
//    enum CodingKeys: String, CodingKey {
//        case errorID = "errorId"
//        case domain, category, message, parameters
//    }
//}
//
//enum Category: String, Codable {
//    case application = "APPLICATION"
//}
//
//enum Domain: String, Codable {
//    case apiBrowse = "API_BROWSE"
//}
//
//// MARK: - Parameter
//struct Parameter: Codable {
//    let name: ParameterName
//    let value: Date
//}
//
//enum ParameterName: String, Codable {
//    case sellerReturnDate = "sellerReturnDate"
//}

typealias hipStamp = [HiplatelicStamp]

