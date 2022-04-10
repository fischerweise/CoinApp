//
//  NumberFormatter.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 18.03.2022.
//

import Foundation

class NumberFormat {
    static func currencyFormatter(amount: Decimal) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: "en-US")
        numberFormatter.groupingSeparator = "."
        numberFormatter.groupingSize = 3
        numberFormatter.usesGroupingSeparator = true
        numberFormatter.decimalSeparator = ","
        numberFormatter.maximumFractionDigits = 8
        numberFormatter.numberStyle = .currency
        
        let doubleValue = amount.doubleValue
        if let result = numberFormatter.string(from: doubleValue as NSNumber) {
            return result
        }
        return ""
    }
}
