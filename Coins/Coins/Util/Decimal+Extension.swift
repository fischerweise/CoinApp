//
//  Decimal+Extension.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 18.03.2022.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return round(NSDecimalNumber(decimal: self).doubleValue * 100) / 100.0
    }
}
