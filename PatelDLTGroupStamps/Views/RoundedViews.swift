//
//  RoundedViews.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import SwiftUI

struct RoundedViews: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
        Circle()
          .stroke(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
        )
  }
}
        
struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    RoundedViews(systemName: "cursorarrow.click")
  }
}
