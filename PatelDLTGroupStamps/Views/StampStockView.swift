//
//  StampStockView.swift
//  Hiplatelics
//
//  Created by patelpra on 4/30/23.
//

import SwiftUI

struct StampStockView: View {
  
  let stamp = Stamp(totalAmount: Double(), discountedAmount: Double())
  
  var body: some View {
    
    List(stamp.unitedNationsStamps) { unitedNationStamp in
      StampView(stamp: unitedNationStamp)
    }
  }
}

struct StampStockView_Previews: PreviewProvider {
  static var previews: some View {
    StampStockView()
  }
}
