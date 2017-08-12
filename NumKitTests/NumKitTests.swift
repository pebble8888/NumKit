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
    
    // first 500 prime
    func testPrime() {
        var n:UInt = 0
        for i in 2...UInt.max {
            if isPrime(UInt(i)) {
                print("\(i) ", terminator:"")
                n += 1
                if n % 20 == 0 {
                    print("")
                    if n == 500 {
                        break
                    }
                }
            }
        }
    }
    
    func testMersenne() {
        for n in 1...UInt(63) {
            let v = Mersenne(n)
            if isPrime(v){
                print("\(n) \(v)")
            }
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
