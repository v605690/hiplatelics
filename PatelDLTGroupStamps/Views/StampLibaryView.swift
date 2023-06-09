//
//  StampLibaryView.swift
//  Hiplatelics
//
//  Created by patelpra on 5/26/23.
//

import SwiftUI

struct StampLibaryView: View {
  let hiplatelicStamp: HiplatelicStamp
  
    var body: some View {
      ScrollView {
        Image(hiplatelicStamp.itemWebURL)
          .resizable()
          .scaledToFit()
          .padding(.bottom)

        Text(hiplatelicStamp.title)
        Text(hiplatelicStamp.categoryPath.rawValue)
        Text(hiplatelicStamp.itemID)
      }
      .padding(.horizontal)
      .multilineTextAlignment(.leading)
    }
}

struct StampLibaryView_Previews: PreviewProvider {
    static var previews: some View {
      StampLibaryView(hiplatelicStamp: HiplatelicStamp.example)
    }
}
