//
//  StampStore.swift
//  Hiplatelics
//
//  Created by patelpra on 5/22/23.
//

import Foundation

/* MARK: Created struct with properties along with array.
 
 Created a new StampStore and StampPListView swift file also incorporated a new struct along with saving and loading data but not the preferred way to do things.

  Not sure if the the output is correct or not by running the app.

  Please note I have updated the Hiplatelics.swift to start the view on StampPListView.
 */

struct UNStamp: Codable, Identifiable {
  var id = UUID()
  var seller: String
  var name: String
  var description: String
  var image: String
  var price: String

  static let example = UNStamp(seller: "hiplatics", name: "Vienna collector stamp", description: "UNESCO World Heritage Site I", image: "image1", price: "2.99")
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

// MARK: URL - Using FileManager
class UNStamps {

  @Published var hiplatelics = [UNStamp]()

  let stampJSONURL = URL(fileURLWithPath: "hiplatelics", relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("json")

  func loadJSONStamps() {
    guard FileManager.default.fileExists(atPath: stampJSONURL.path) else {
      return
    }

    let decoder = JSONDecoder()

    do {
      let stampsData = try Data(contentsOf: stampJSONURL)
      hiplatelics = try decoder.decode([UNStamp].self, from: stampsData)
    } catch let error {
      print(error)
    }
  }

  func saveJSONUNStamps() {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted

    do {
      let stampsData = try encoder.encode(unitedNationsStamps)
      try stampsData.write(to: stampJSONURL, options: .atomicWrite)
    } catch let error {
      print(error)
    }
  }
}


class UNStampLoader {

  static var plistURL: URL {
    let documents = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    return documents.appendingPathComponent("StampStore.plist")
  }

  static func load() -> UNStamp {
    let decoder = PropertyListDecoder()

    guard let data = try? Data.init(contentsOf: plistURL),
          let preferences = try? decoder.decode(UNStamp.self, from: data) else { return UNStamp(seller: "", name: "", description: "", image: "", price: "")
    }
    return preferences
  }
}

extension UNStampLoader {
  static func write(preferences: UNStamp) {
    let encoder = PropertyListEncoder()

    if let data = try? encoder.encode(preferences) {
      if FileManager.default.fileExists(atPath: plistURL.path) {
        try? data.write(to: plistURL)
      } else {
        FileManager.default.createFile(atPath: plistURL.path, contents: data, attributes: nil)
      }
    }
  }
}



