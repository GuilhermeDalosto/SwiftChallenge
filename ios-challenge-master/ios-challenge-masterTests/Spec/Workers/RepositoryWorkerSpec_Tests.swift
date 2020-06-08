//
//  RepositoryWorkerSpec_Tests.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Quick
import Nimble
@testable import ios_challenge_master

class RepositoryWorkerSpec_Tests: QuickSpec{
    override func spec(){
        describe("Repository worker fetch"){
    
            var worker: RepositoryDataWorker?
            context("Can Fech data from not-Mock") {
                
                beforeEach {
                    worker = RepositoryDataWorker()
                }
                
                it("Should fetch any data") {
                    worker?.fetchData(completion: { (repositories, nil) in
                        expect(repositories).toNot(beNil())
                    })
                }
            }
        }
    }
}
