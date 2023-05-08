//
//  MainView.swift
//  Hiplatelics
//
//  Created by patelpra on 5/8/23.
//

import SwiftUI

struct MainView: View {
  
  var stamps: Stamp
  var stampImage: StampImage
  
  var body: some View {
    
    // MARK: Assignment 1: Tab view
    
    TabView {
      StampShopView()
        .tabItem {
          Image(systemName: "house")
            .resizable()
          Text("Home")
        }
      EmptyView()
        .tabItem {
          Label("Search", systemImage: "magnifyingglass")
        }
      StampStockView()
        .tabItem {
          Label("List", systemImage: "list.dash")
        }.badge(stamps.unitedNationsStamps.count)
        
      StampStockGridView()
        .tabItem {
          Label("Basket", systemImage: "basket")
        }.badge(stampImage.name)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView(stamps: stamp, stampImage: stampImages)
  }
}

