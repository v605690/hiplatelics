//
//  OnboardingScreenView.swift
//  hiplatelics
//
//  Created by patelpra on 4/9/23.
//

import SwiftUI

struct OnboardingScreenView: View {
  
  @Binding var onboardingScreenIsShowing: Bool
  let stamp = Stamp(totalAmount: Double(), discountedAmount: Double())
  
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
              .resizable()
              .frame(width: 150, height: 150)
            
            ScrollView {
              
              DiscountTypeView(text: "text")
            }
            .padding()
          }
          .padding()
    }
  }
}

struct StampView: View {
  let stamp: Stamp.UNStamp
  
  var body: some View {
    HStack(alignment: .lastTextBaseline) {
      Text(stamp.name ?? "Unkown Name").fixedSize(horizontal: false, vertical: true)
        .frame(width: 100)
        .padding(.leading)
        .font(.subheadline)
      Image(stamp.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding(.leading, 30)
      Text(stamp.price)
        .padding(.leading, 25)
    }
  }
}

struct OnboardingScreenView_Previews: PreviewProvider {
  static private var onboardingScreenIsShowing = Binding.constant(false)
  static var previews: some View {
    OnboardingScreenView(onboardingScreenIsShowing: onboardingScreenIsShowing)
  }
}

