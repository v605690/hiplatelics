//
//  StampStockView.swift
//  Hiplatelics
//
//  Created by patelpra on 4/30/23.
//

import SwiftUI

struct StampStockView: View {

  @StateObject private var stampHelper = StampHelper()
  @State private var shoppingAlert = false
  
  var body: some View {
    
    // MARK: Assignment 2: Summary screen and detail screen
    NavigationStack {
      List(stampHelper.stamps, id: \.id) { stamp in
        Spacer()
        AsyncImage(url: URL(string: stamp.image)!) { stamp in
          if let image = stamp.image {
            image
              .resizable()
              .aspectRatio(contentMode: .fit)
          } else if stamp.error != nil {
            Button("Show Alert") {
              shoppingAlert = true
            }
            Text("No image avaiable")
          } else {
            Image(systemName: "photo")
              .resizable()
              .aspectRatio(contentMode: .fill)
          }
        }
        Text(stamp.itemId)
        Text(stamp.title)
        Text(stamp.price)
        Text(stamp.categoryPath)
        Text(stamp.categoryIdPath)
          .multilineTextAlignment(.leading)
          .font(.headline)
      }
      .navigationTitle("Stocked Stamps")
      .listStyle(.grouped)
      .navigationBarItems(trailing:
                            Button(action: {
        Task {
          try await stampHelper.saveStamps()
        }
      }) {
        Image(systemName: "plus")
      })
    }
    .alert("No network connection", isPresented: $shoppingAlert) {
      Button("OK", role: .cancel) {}
    }
    .task {
      do {
        try await stampHelper.getStamps()
      } catch StampError.badURLRequest {
        print("bad url request")
      } catch StampError.invalidResponse {
        print("invalid response")
      } catch StampError.invalidData {
        print("invalid data")
      } catch StampError.encodingError {
        print("encoding error")
      } catch {
        print("unexpected error")
      }
    }
  }
}

struct StampStockView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      StampStockView()
    }
  }
}
