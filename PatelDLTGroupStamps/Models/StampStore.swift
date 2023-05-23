//
//  StampStore.swift
//  Hiplatelics
//
//  Created by patelpra on 5/22/23.
//

import Foundation

/* MARK: Created struct with properties along with array.
 
 Had a difficult time on assignment 7, confused at times. The videos helped but I felt as though was not clear enough
 
 I ended up creating a new file StampStore and incorporated a new struct along with saving and load data but not the preferred way to do things but wanted show some progress.
*/

struct UNStamp: Codable, Hashable, Identifiable {
  var id = UUID()
  var seller: String
  var name: String? = nil
  let description: String
  var image: String
  let price: String
  var discountTypes: [String] = []
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
let stampsPListURL = URL(fileURLWithPath: "Stamp", relativeTo: FileManager.documentsDirectoryURL.appendingPathExtension("plist"))

// MARK: Assignment 1: Saving data to Plist only
private func savePListStamps() {
  let encoder = PropertyListEncoder()
  encoder.outputFormat = .xml
  
  do {
    let encodedData = try encoder.encode(unitedNationsStamps)
    try! encodedData.write(to: stampsPListURL, options: .atomicWrite)
    print(encodedData)
  } catch let error {
    print(error)
  }
}
// MARK: Assignment 2: Loading the saved data
private func loadPListStamps() {
  guard FileManager.default.fileExists(atPath: stampsPListURL.path)
  else {
    return
  }
  
  let decoder = PropertyListDecoder()
  
  do {
    let encodedData = try Data(contentsOf: stampsPListURL)
    unitedNationsStamps = try decoder.decode([UNStamp].self, from: encodedData)
  } catch let error {
    print(error)
  }
}
