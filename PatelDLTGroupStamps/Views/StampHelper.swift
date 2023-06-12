//
//  StampHelper.swift
//  Hiplatelics
//
//  Created by patelpra on 6/9/23.
//

import Foundation

class StampHelper: ObservableObject {
  @Published var stamps: [Stamp] = [] {

    didSet {
      Task {
        try await saveStamps()
      }
    }
  }
  func getStamps() async throws {
    let (data, response) = try await
    URLSession.shared.data(from: URL(string: "http://www.grupodlt.com/stamps/hip.json")!)

    guard let response = response as?
            HTTPURLResponse, response.statusCode == 200 else {
      throw StampError.invalidResponse
    }

    Task { @MainActor in
      self.stamps = try JSONDecoder().decode([Stamp].self, from: data)
    }
  }

  // MARK: NEW save method
  public func saveStamps() async throws {
    guard let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
      throw StampError.badURLRequest
    }

    let jsonFile = documentDirectory.appendingPathComponent("newStamp.json")
    let urlString = "http://www.grupodlt.com/stamps/hip.json"

    guard let jsonURL = URL(string: urlString) else {
      throw StampError.badURLRequest
    }
    let (data, response) = try await URLSession.shared.data(from: jsonURL)
    try data.write(to: jsonFile)

    guard let response = response as?
            HTTPURLResponse, response.statusCode == 200 else {
      throw StampError.invalidResponse
    }
    do {
      let stampData = try Data(contentsOf: jsonURL)
      if let stampArray = String(data: stampData, encoding: .utf8) {
        print("File contents: \(stampArray)")
      }
    } catch {
      print("Error reading file: \(error)")
    }
  }
}

