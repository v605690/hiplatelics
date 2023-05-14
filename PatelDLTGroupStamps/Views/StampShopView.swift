//
//  StampShopView.swift
//  Hiplatelics
//
//  Created by patelpra on 5/8/23.
//

import SwiftUI

struct StampShopView: View {
  
  // MARK: Assignment 4: Animation
  private struct AnimationData: Equatable {
    let offset: CGSize
    let color: Color
    
    static let array: [Self]  = [
      .init(
        offset: .init(width: 0, height: 0),
        color: .black
      ),
      .init(
        offset: .init(width: 100, height: -100),
        color: .orange
      ),
      .init(
        offset: .init(width: -100, height: -100),
        color: .white
      )
    ]
  }
  // MARK: Assignment 4: Animation - - Continued
  @State private var animationData = AnimationData.array[0]
  
  var body: some View {
    
    NavigationView {
      VStack {
        Spacer()
        WelcomeTextViews(text: "hiplatelics")
        AboutTextViews(text: "A stamp company")
        
        Image("empty1")
          .padding()
        Text("Your cart is empty")
          .fontWeight(.bold)
          .font(.title)
          .padding()
        Text("Looks like you haven’t made your choice yet.")
        Text("Let’s shop!")
          .padding(.bottom)
        
        NavigationLink(destination: StampStockView()) {
          Text("Shop Now")
          // MARK: Assignment 4: Animation  - Continued
            .scaleEffect(2)
            .foregroundColor(animationData.color)
            .animation(.easeIn(duration: 0.4)
              .repeatCount(50),
              //.repeatForever(autoreverses: false),
              value: animationData)
            .onAppear {
              for (index, data) in AnimationData.array.enumerated().dropFirst() {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(index)) {
                  animationData = data
              }
            }
          }
        }
        .padding()
        .padding([.leading, .trailing], 55)
        .foregroundColor(.white)
        .background(Color("SchemeColor"))
        .cornerRadius(25)
        .font(.system(size: 14, weight: .semibold, design: .default))
        Spacer()
      }
    }
  }
}

struct StampShopView_Previews: PreviewProvider {
  static var previews: some View {
    StampShopView()
  }
}
