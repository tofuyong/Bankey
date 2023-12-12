//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Andrea Yong on 20/11/23.
//

import Foundation
import XCTest

@testable import Bankey

class Test: XCTestCase {
    // Step 1: start by defining the object you want to test and force unwrap it
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        // Step 2: Instantiate it in setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
    }
    
    func testZeroDollarsFormatted() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "\(currencySymbol)0.00")
    }
}
