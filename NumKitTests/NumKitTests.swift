//
//  NumKitTests.swift
//  NumKitTests
//
//  Created by pebble8888 on 2017/08/05.
//  Copyright © 2017年 pebble8888. All rights reserved.
//

import XCTest
@testable import NumKit

class NumKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        XCTAssertEqual(isOdd(0), false)
        XCTAssertEqual(isOdd(1), true)
        XCTAssertEqual(isOdd(2), false)
        
        XCTAssertEqual(gcd(16,24), 8)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
