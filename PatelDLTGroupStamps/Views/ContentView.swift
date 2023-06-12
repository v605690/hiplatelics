//
//  ContentView.swift
//  hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import SwiftUI

struct ContentView: View {
  
  @State var welcomeScreenIsShowing = false
  @State var nextButtonIsShowing = false
  @State var stamps: Stamp
  
  var body: some View {
    ZStack {
      
      Color("SchemeColor").ignoresSafeArea()
      VStack(spacing: 10) {
        HeaderView(nextButtonIsShowing: $nextButtonIsShowing, welcomeScreenIsShowing: $welcomeScreenIsShowing, stamp: $stamps)
      }
    }
  }
  
  struct ContentView_Previews: PreviewProvider {
    static private var welcomeScreenIsShowing = Binding.constant(false)
    static var previews: some View {
      ContentView(stamps: Stamp.example)
    }
  }
}
