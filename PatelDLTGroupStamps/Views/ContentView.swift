//
//  ContentView.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import SwiftUI

struct ContentView: View {
  
  @State private var welcomeScreenIsShowing = false
  @State private var stamp = Stamp(totalAmount: Double(), discountedAmount: Double())
  
  var body: some View {
    ZStack {
      
      Color("WelcomeScreenColor").ignoresSafeArea()
      VStack(spacing: 10) {
        HeaderView(welcomeScreenIsShowing: $welcomeScreenIsShowing, stamp: $stamp)
      }
    }
  }
  
  struct ContentView_Previews: PreviewProvider {
    static private var welcomeScreenIsShowing = Binding.constant(false)
    static var previews: some View {
      ContentView()
    }
  }
}
