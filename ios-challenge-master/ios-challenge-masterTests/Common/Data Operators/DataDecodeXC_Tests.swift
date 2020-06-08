//
//  DataDecodeXC_Tests.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import XCTest

class DataDecodeXC_Tests: XCTestCase {
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        do{
            let decoded: [Item] = try Decoder.decode(RepositoriesMock().data)
            XCTAssertEqual(decoded[0].id, 21700699)
        } catch {}
    }
}



