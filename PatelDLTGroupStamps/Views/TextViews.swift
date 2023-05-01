//
//  TextViews.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import SwiftUI

struct WelcomeTextViews: View {
  let text: String
  
  var body: some View {
    Text(text)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
      .font(.title)
      .fontWeight(.black)
  }
}

struct OnboardingTextViews: View {
  let text: String
  
  var body: some View {
    Text(text)
      .bold()
      .multilineTextAlignment(.leading)
      .foregroundColor(Color("TextColor"))
      .font(.title)
      .fontWeight(.black)
  }
}

struct AboutTextViews: View {
  let text: String
  
  var body: some View {
    Text(text)
      .multilineTextAlignment(.leading)
      .foregroundColor(Color("TextColor"))
      .font(.headline)
      .fontWeight(.light)
  }
}

struct WelcomeTextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      WelcomeTextViews(text: "Welcome Patrons")
      OnboardingTextViews(text: "A wide range of Stamps")
      AboutTextViews(text: "hiplatelics - A stamp company")
    }
    
  }
}
