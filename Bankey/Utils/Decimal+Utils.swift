//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Andrea Yong on 20/11/23.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
