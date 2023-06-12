//
//  MainView.swift
//  Hiplatelics
//
//  Created by patelpra on 5/8/23.
//

import SwiftUI

struct MainView: View {

  var stamps: [Stamp]
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
        }.badge(12)
        
      StampStockGridView()
        .tabItem {
          Label("Stock", systemImage: "folder.fill.badge.plus")
        }.badge(15)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView(stamps: [Stamp.example].self, stampImage: stampImages)
  }
}

