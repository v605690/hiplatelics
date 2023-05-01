import Foundation
import PlaygroundSupport

var discountTypes = [ "seasonalDiscount" : 0.15, "holidayDiscount" : 0.10, "yearEndDiscount" : 0.20, "monthlyDiscount": 0.05 ]
var itemPrices = [7.00, 10.00, 20.00, 6.00, 2.00, 3.00, 8.00]
var totalAmount = itemPrices.reduce(0) { $0 + $1 }
let discountPercentage = 0.10
var discountedAmount = totalAmount * discountPercentage

//  MARK: - Assignment 1 : Function
func totalAmountAfterDiscount(yourAmount totalAmount: Double, discount discountPercentage: Double) -> Double {
  let discountedAmount = totalAmount * discountPercentage
  
  return totalAmount - discountedAmount
}

totalAmountAfterDiscount(yourAmount: 75.00, discount: 0.07)

print("------------------------------------------")

// MARK: - Assignment 2 - Function - With function overloading
func totalAfterDiscount(yourAmount totalAmount: Double, discount discountPercentage: Double = 0.05) -> Double {
  let discountedAmount = totalAmount * discountPercentage
  
  return totalAmount - discountedAmount
}

totalAfterDiscount(yourAmount: 75.00)

print("-------------------------------------------")

// MARK: - Assignment 3: typealias
// I was not too sure about this assignment as it was confusing to interpret.
typealias Calculation = (Double, String) -> Double

func printDiscount(_ totalAmount: Double, _ discountPercentage: String, _ calculation: Calculation) ->  Double {
  
  let totalAmountAfterDiscount = calculation(totalAmount, discountPercentage)
  
  return totalAmount - totalAmountAfterDiscount
}

printDiscount(75.00, "0.05") { $0 * (Double($1) ?? 0.00) }
printDiscount(75.00, "0.10") { $0 * (Double($1) ?? 0.00) }
printDiscount(75.00, "0.15") { $0 * (Double($1) ?? 0.00) }

print("-------------------------------------------")

// MARK: - Assignment 4: Closure
typealias CalculateDiscount = (Double, Double) -> Double

let totalAmountAfterDiscount: CalculateDiscount = { $0 * $1 - ($0) }
let newAmount = abs(totalAmountAfterDiscount(75.00, 0.10))

print("-------------------------------------------")

// MARK: - Assignment 5: Map
let itemPriceIncrease = itemPrices.map { item in item * 0.5 + item }
let priceLabels = itemPriceIncrease.map { (item) -> String in
  String(format: "%.2f", item)
}

print(itemPriceIncrease)

print(priceLabels)

print("-------------------------------------------")


// MARK: - Assignment 6: Sorted - Feature added to project.  DiscountTypeView created
let discounts = discountTypes.sorted(by: { $0.value > $1.value })

for (k, v) in Array(discounts).sorted(by: { $0.value > $1.value }) {
  let str1 = String(format: "%.2f", v)
  print("\(k): \(str1) percent off.")
}

print("-------------------------------------------")

// MARK: - Assignment 7: Enums and Switch Cases
enum DiscountTypes {
  case seasonalDiscount(seasonalOff: Int)
  case yearEndCloseOut(yearDiscount: Int)
  case monthlyDiscount(monthlySavings: Int)
  case holidayDiscount(holidaySavings: Int)
}

func printDiscount(for discounts: DiscountTypes) {
  switch discounts {
  case let .yearEndCloseOut(yearDiscount):
    print("Come now to get \(yearDiscount)% off savings on year end close out sale.")
  case let .monthlyDiscount(monthlySavings):
    print("Monthly discount, year long is \(monthlySavings)% off total purchases.")
  case let .seasonalDiscount(seasonalOff):
    print("Our seasonal discount rate is \(seasonalOff)% off total purchase.")
  case let .holidayDiscount(holidaySavings):
    print("Holiday season is here, our special discounted rate is \(holidaySavings)% off on each item.")
  }
}

printDiscount(for: .holidayDiscount(holidaySavings: 10))
printDiscount(for: .monthlyDiscount(monthlySavings: 5))
printDiscount(for: .seasonalDiscount(seasonalOff: 15))
printDiscount(for: .yearEndCloseOut(yearDiscount: 20))

print("---------------------------------------------")

// MARK: - Assignment 8: Computed Property
var currentDiscountedAmount: Double {
  return abs(totalAmount * discountPercentage - totalAmount)
}

print("Total amount after discount: \(currentDiscountedAmount)")

print("---------------------------------------------")

// MARK: - Assignment 9: Lazy Property
struct DeepDiscount {
  var total = totalAmount
  var maximumDiscount: Double
  
  lazy var maxDiscount: Double = {
    let discount = maximumDiscount
    let myTotal = total * discount
    return myTotal
  }()
}

var myDeepDiscount = DeepDiscount(maximumDiscount: 0.30)

print(myDeepDiscount)
print("Maximum Discount: ", myDeepDiscount.maxDiscount)

print("-----------------------------------------------")

// MARK: - Assignment 10: Method
struct JumboDiscount {
  var total = totalAmount
  var jumboDiscount: Double
  
  func totalAmountAfterApplyingDiscount(maximumDiscount maxDiscount: Double) -> Double {
    return abs(total * jumboDiscount - total)
  }
}

var customDiscount = JumboDiscount(jumboDiscount: Double(0.75))

let mySpecialDiscount = customDiscount.totalAmountAfterApplyingDiscount(maximumDiscount: Double())

print("Total amount after applying jumbo discount: \(mySpecialDiscount)")
