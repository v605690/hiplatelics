
import Foundation
import PlaygroundSupport

struct Stamps: Identifiable, Codable {
  var id = UUID()
  var seller: String
  var name: String? = nil
  var description: String
  var imageURL: String? = nil
  var price: Double
}

var stampList : [Stamps?] = []

var unitedNationsStamps = [Stamps(seller: "hiplatics", name: nil, description: "An educated collector is a happy                                                  collector", imageURL: nil, price: 1.99),
                           Stamps(seller: "hiplatics", name: nil, description: "An educated collector is a happy collector", imageURL: nil, price: 1.99),
                           Stamps(seller: "hiplatics", name: "UN Vienna #Mi756-Mi757 MNH 2012 World Heritage Sites Africa", description: "An educated collector is a happy collector", imageURL: "s-l1600.jpg", price: 2.99),
                           Stamps(seller: "hiplatics", name: "UN Vienna #Mi760 MNH 2012 Golden Amber Lhasa Lady China Stephen Bennett [520c]", description: "An educated collector is a happy collector", imageURL: "s-l1600.jpg", price: 1.99),
                           Stamps(seller: "hiplatics", name: "UN Vienna #Mi756 MNH 2012 Kenya Great Rift Valley Rhinoceros [518]", description: "An educated collector is a happy collector", imageURL: "s-l1600.jpg", price: 1.99),
                           Stamps(seller: "hiplatics", name: "UN Vienna #Mi75KB MNH 1987 Day United Nations Pane 12 [74]", description: "An educated collector is a happy collector", imageURL: "s-l1600.jpg", price: 6.99)]

func addStamps(for unitedNationsStamps: [Stamps]) {
  for stamp in unitedNationsStamps {
    stampList.append(stamp)
  }
}

addStamps(for: unitedNationsStamps)

func printStamps(for unitedNationsStamps: [Stamps]) {
  for stamp in unitedNationsStamps {
    if (stamp.name != nil && stamp.imageURL != nil) {
      print("Hiplatelics stamp list: \(stamp.seller), \(stamp.description) 😎😎😎 \nSelling stocked stamps at a bargin ➡️ \(stamp.name ?? "Unkown name"), \(stamp.imageURL ?? "Stock Image"), ﹩\(stamp.price).")
    }
  }
}

printStamps(for: unitedNationsStamps)
