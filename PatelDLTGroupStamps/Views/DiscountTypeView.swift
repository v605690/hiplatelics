//
//  DiscountTypeView.swift
//  hiplatelics
//
//  Created by patelpra on 4/24/23.
//

import SwiftUI

struct DiscountTypeView: View {
  
  @State private var buyButtonIsShowing = false
  
  var text: String
  
  var body: some View {
    let discountTypes = [ "Monthly Discount" : "5",
                          "Holiday Discount" : "10",
                          "Seasonal Discount" : "15",
                          "Year End Discount" : "20",
    ]

    ScrollView() {
      Spacer()
        .padding()

      NavigationView {
        List {
          let discounts = discountTypes.sorted(by: <)
          ForEach(discounts.sorted(by: <), id: \.key)
          { key, value in
            Section(header: Text(key)) {
              Text("\(value) % ")
            }
          }
        }

        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .principal) {
            VStack {
              Text(" ").font(.subheadline)
                .padding(.top)
              Text("Discounts Available")
                .bold()
                .fontWeight(.heavy)
            }
          }
        }
        .fontWeight(.regular)
        
        .toolbar {
          ToolbarItem(placement: .navigationBarLeading) {
            HStack {
              Text("")
              NavigationLink(destination: StampStockView()) {
                Image(systemName: "list.dash")
              }
            }
          }
          
          ToolbarItem(placement: .navigationBarTrailing) {
            HStack {
              Text("")
              NavigationLink(destination: EmptyView()) {
                Image(systemName: "cart.badge.plus")
              }
            }
          }
        }
      }
    }
    .padding(.top, 0.3)
  }
}


struct DiscountTypeView_Previews: PreviewProvider {
  static var previews: some View {
    DiscountTypeView(text: "Discount Types")
  }
}
