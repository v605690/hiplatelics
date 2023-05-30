//
//  Stamps.swift
//  Hiplatelics
//
//  Created by patelpra on 5/27/23.
//

import Foundation

class Stamps: ObservableObject {
  let postages: [HiplatelicStamp]
  
  var primary: HiplatelicStamp {
    postages[0]
  }
  
  init() {
    let url = Bundle.main.url(forResource: "hiplatelics", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    postages = try! JSONDecoder().decode([HiplatelicStamp].self, from: data)
  }
}
