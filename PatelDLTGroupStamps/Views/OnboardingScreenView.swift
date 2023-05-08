//
//  OnboardingScreenView.swift
//  hiplatelics
//
//  Created by patelpra on 4/9/23.
//

import SwiftUI

struct OnboardingScreenView: View {
  
  @Binding var nextButtonIsShowing: Bool
  @Binding var onboardingScreenIsShowing: Bool
  var stamps: Stamp
  
  var body: some View {
    
    ZStack {
      NavigationView {
        VStack {
          OnboardingTextViews(text: "A wide range of stamps")
            .frame(alignment: .centerFirstTextBaseline)
            .padding([.top, .bottom])
          
          AboutTextViews(text: "Hiplatelics stamp app, allows customers to choose stamps for purchase anywhere in the world....")
            .frame(alignment: .trailingLastTextBaseline)
          Spacer()
          Image("StampDude")
            .frame(width: 150, height: 150)
          Spacer()
          Spacer()
          
          NavigationLink(destination: DiscountTypeView()) {
            Text("Discounts")
          }
          .padding()
          .padding([.leading, .trailing], 40)
          .foregroundColor(.white)
          .background(Color("SchemeColor"))
          .cornerRadius(25)
          .font(.system(size: 18, weight: .bold, design: .default))
          Spacer()
          NavigationLink(destination: MainView(stamps: stamp, stampImage: stampImages)) {
                Text("Next  ->")
              }
          .padding()
          .padding([.leading, .trailing], 50)
          .foregroundColor(.white)
          .background(Color("SchemeColor"))
          .cornerRadius(25)
          .font(.system(size: 18, weight: .bold, design: .default))
          Spacer()
        }
        .padding(.top)
      }
    }
  }
}

struct StampView: View {
  let stamp: Stamp.UNStamp
  
  var body: some View {
    VStack(spacing: 10) {
      Image(stamp.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding(.all, 10)
      Text(stamp.name ?? "Unkown Name")
        .fixedSize(horizontal: false, vertical: true)
        .frame(width: 300)
        .font(.title2)
      Text(stamp.description)
        .fixedSize(horizontal: false, vertical: true)
        .frame(width: 400)
        .padding(.leading)
        .font(.title3)
      Text(stamp.price)
        .padding(.leading, 25)
    }
  }
}

struct OnboardingScreenView_Previews: PreviewProvider {
  static private var onboardingScreenIsShowing = Binding.constant(false)
  static private var nextButtonIsShowing = Binding.constant(false)
  static var previews: some View {
    OnboardingScreenView(nextButtonIsShowing: nextButtonIsShowing, onboardingScreenIsShowing: onboardingScreenIsShowing, stamps: stamp)
  }
}


