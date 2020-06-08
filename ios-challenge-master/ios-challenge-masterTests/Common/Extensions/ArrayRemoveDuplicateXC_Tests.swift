//
//  ArrayRemoveDuplicateXC_Tests.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import XCTest
@testable import ios_challenge_master

class ArrayRemoveDuplicateXC_Tests: XCTestCase {
    
    var array: [String] =  ["Bank1","Bank2","Bank2","Bank3"]
    

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        array.removeDuplicates()
        XCTAssertNotNil(array)
    }


}
