//
//  FloatingPointRadianExtensionTests.swift
//  ARCLTests
//
//  Created by Adrian Bolinger on 8/27/19.
//  Copyright © 2019 Project Dent. All rights reserved.
//

import XCTest
@testable import ARCL

/*
 public extension FloatingPoint {
     var degreesToRadians: Self { return self * .pi / 180 }
     var radiansToDegrees: Self { return self * 180 / .pi }
 }
 */

class FloatingPointRadianExtensionTests: XCTestCase {
    
    let pi = 3.141592653589793
    
    func testDegreesToRadians() {
        let randomNumber = Double.random(in: 0...180)
        
        XCTAssertEqual(randomNumber * pi / 180,
                       randomNumber.degreesToRadians)
    }
    
    func testRadiansToDegrees() {
        let randomNumber = Double.random(in: 0...180)

        XCTAssertEqual(randomNumber * 180 / pi,
                       randomNumber.radiansToDegrees)
    }
}
