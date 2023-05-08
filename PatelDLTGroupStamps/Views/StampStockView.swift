//
//  StampStockView.swift
//  Hiplatelics
//
//  Created by patelpra on 4/30/23.
//

import SwiftUI

struct StampStockView: View {
  
  var body: some View {
    
    // MARK: Assignment 2: Summary screen and detail screen
    
    NavigationStack {
      List {
        ForEach(stamp.unitedNationsStamps, id: \.self) {
          unitedNationStamp in
          NavigationLink(unitedNationStamp.description, destination: StampView(stamp: unitedNationStamp))
        }
        .navigationTitle("Stocked Stamps")
      }
      .listStyle(GroupedListStyle())
      .frame(width: 400)
    }
  }
}

struct StampStockView_Previews: PreviewProvider {
  static var previews: some View {
    StampStockView()
  }
}
