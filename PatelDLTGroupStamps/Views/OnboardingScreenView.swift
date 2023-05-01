//
//  OnboardingScreenView.swift
//  hiplatelics
//
//  Created by patelpra on 4/9/23.
//

import SwiftUI

struct OnboardingScreenView: View {
  @Binding var onboardingScreenIsShowing: Bool
  
  var body: some View {
    
    ZStack {
      VStack {
        OnboardingTextViews(text: "A wide range of stamps")
          .frame(alignment: .centerFirstTextBaseline)
          .padding([.top, .bottom])
        AboutTextViews(text: "Hiplatelics stamp app, allows customers to choose stamps for purchase anywhere in the world....")
          .frame(alignment: .trailingLastTextBaseline)
        Spacer()
        Image("StampDude")
        Spacer()
        Spacer()
        
      }
    }
  }
}

struct OnboardingScreenView_Previews: PreviewProvider {
  static private var onboardingScreenIsShowing = Binding.constant(false)
  static var previews: some View {
    OnboardingScreenView(onboardingScreenIsShowing: onboardingScreenIsShowing)
  }
}
