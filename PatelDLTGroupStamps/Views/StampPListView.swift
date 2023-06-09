//
//  StampPListView.swift
//  Hiplatelics
//
//  Created by patelpra on 5/29/23.
//

import SwiftUI

struct StampPListView: View {
  @State private var preferences = UNStampLoader.load()
  @State private var plist = UNStamps()

  var unstamp: UNStamp

  var body: some View {
    VStack {
      TextField("Seller", text: $preferences.seller)
      TextField("Name", text: $preferences.name)
      TextField("Description", text: $preferences.description)
      TextField("Price", text: $preferences.price)
      Button("Update", action: {
        UNStampLoader.write(preferences: self.preferences)
      })
      .padding()
      Button("Load") {
        plist.loadJSONStamps()
      }
      .padding()
      Button("Save") {
        plist.saveJSONUNStamps()
      }
    }
    .padding()
    .font(.title2)

  }
}

struct StampPListView_Previews: PreviewProvider {
  static var previews: some View {
    StampPListView(unstamp: UNStamp.example)
  }
}
