//
//  DiscountTypeView.swift
//  hiplatelics
//
//  Created by patelpra on 4/24/23.
//

import SwiftUI

struct DiscountTypeView: View {
  
var stamp = Stamp()
  
  var body: some View {
    let discountTypes = [ "Monthly Discount" : "5",
                          "Holiday Discount" : "10",
                          "Seasonal Discount" : "15",
                          "Year End Discount" : "20",
    ]

    NavigationStack {
      List {
        let discounts = discountTypes.sorted(by: <)
        ForEach(discounts.sorted(by: <), id: \.key)
        { key, value in
          Section(header: Text(key)) {
            Text("\(value) % ")
          }
        }
      }
      .navigationTitle("Discount Types")
      .listStyle(GroupedListStyle())
    }
  }
}


struct DiscountTypeView_Previews: PreviewProvider {
  static var previews: some View {
    DiscountTypeView()
  }
}
