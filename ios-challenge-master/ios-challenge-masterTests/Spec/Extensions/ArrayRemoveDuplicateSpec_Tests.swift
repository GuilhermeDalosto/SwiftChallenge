//
//  ArrayRemoevDuplicateSpec_Tests.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Quick
import Nimble
@testable import ios_challenge_master

class ArrayRemoveDuplicateSpec_Tests: QuickSpec{

    override func spec(){
        describe("Array of defined type") {
            var array = ["Some Bank","Some Bank"]
            
            context("Should remove all duplicates") {
                array.removeDuplicates()
                expect(array.count).to(equal(1))
            }
        }
        
    }
    
}
