//
//  DiscountTypeView.swift
//  hiplatelics
//
//  Created by patelpra on 4/24/23.
//

import SwiftUI

struct DiscountTypeView: View {
  
  var text: String
  
  var body: some View {
    let discountTypes = [ "Seasonal Discount" : "15",
                          "Holiday Discount" : "10",
                          "Year End Discount" : "20",
                          "Monthly Discount": "5" ]
    VStack {
      NavigationView {
        List {
          let discounts = discountTypes.sorted(by: >)
          ForEach(discounts.sorted(by: >), id: \.key)
          { key, value in
            Section(header: Text(key)) {
              Text("\(key):  \(value) %")
            }
          }
        }.navigationTitle("Discount Types")
      }
    }
  }
}

struct DiscountTypeView_Previews: PreviewProvider {
  static var previews: some View {
    DiscountTypeView(text: "Discount Types")
  }
}
