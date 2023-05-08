//
//  WelcomeScreenView.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import SwiftUI

struct WelcomeScreenView: View {
  
  @Binding var welcomeScreenIsShowing: Bool
  @Binding var nextButtonIsShowing: Bool
  @Binding var stamp: Stamp
  
  var body: some View {
    HeaderView(nextButtonIsShowing: $nextButtonIsShowing, welcomeScreenIsShowing: $welcomeScreenIsShowing, stamp: $stamp)
  }
}

struct HeaderView: View {
  @Environment(\.verticalSizeClass) var veritcalSizeClass
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  @Binding var nextButtonIsShowing: Bool
  @Binding var welcomeScreenIsShowing: Bool
  @State private var onboardingScreenIsShowing = false
  @Binding var stamp: Stamp
  
  var body: some View {
    ZStack {
      HStack {
        WelcomeTextViews(text: "Welcome, Pravin")
        if veritcalSizeClass == .regular && horizontalSizeClass == .compact {
          Spacer()
        }
      }
      HStack {
        Spacer()
        Button {
          onboardingScreenIsShowing.toggle()
        } label: {
          RoundedViews(systemName: "cursorarrow.click")
        }
        
        .sheet(isPresented: $onboardingScreenIsShowing) {
          OnboardingScreenView( nextButtonIsShowing: $nextButtonIsShowing, onboardingScreenIsShowing: $onboardingScreenIsShowing, stamps: stamp)
        }
      }
    }
  .padding([.horizontal, .top])
  Spacer()
  }
}

struct WelcomeScreen_Previews: PreviewProvider {
  static private var welcomeScreenIsShowing = Binding.constant(false)
  static private var nextButtonIsShowing = Binding.constant(false)
  static private var stamp = Binding.constant(Stamp())
  static var previews: some View {
    VStack {
      WelcomeScreenView(welcomeScreenIsShowing: welcomeScreenIsShowing, nextButtonIsShowing: nextButtonIsShowing, stamp: stamp)
    }
  }
}
