//
//  StampStockGridView.swift
//  Hiplatelics
//
//  Created by patelpra on 5/8/23.
//

import SwiftUI

struct StampStockGridView: View {
  
  @State private var stamps = stampImage
  @State var gridLayout: [GridItem] = [ GridItem() ]
  
  var body: some View {
    
    // MARK: Assignment 3: Grid
    
    ScrollView {
      LazyVGrid(columns: gridLayout, alignment: .center, spacing: 1) {
        ForEach(stamps.indices, id: \.self) { index in

          Image(stamps[index].name)
          
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.all)
            .frame(height: 185)
            .padding(.all, 1)
          Text("hiplatelics stamps")
          Text("Extra 15% OFF 5+ Items")
            .padding(.horizontal)
        }
      }
      .padding(.all, 10)
    }
  }
}

struct StampStockGridView_Previews: PreviewProvider {
    static var previews: some View {
        StampStockGridView()
    }
}
