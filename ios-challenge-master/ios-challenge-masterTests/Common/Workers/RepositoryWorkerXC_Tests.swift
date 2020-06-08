//
//  RepositoryWorkerXC_Tests.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 08/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import XCTest
@testable import ios_challenge_master

class RepositoryWorkerXC_Tests: XCTestCase {

    var worker: RepositoryDataWorker?
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        worker = RepositoryDataWorker()
        worker?.fetchData(completion: { (repositories, error) in
            if error != nil {print(error!)}
            
            XCTAssertNotNil(repositories)
        })
        
    }

}
