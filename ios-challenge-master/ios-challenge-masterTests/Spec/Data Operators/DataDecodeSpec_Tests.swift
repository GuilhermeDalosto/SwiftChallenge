//
//  DataDecodeSpec_Tests.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Quick
import Nimble

class DataDecodeSpec_Tests: QuickSpec{
    override func spec() {
        describe("Decode Specific JsonType") {
            context("Can decode a specific Mocked JsonType"){
                it("Should Decode") {
                    do{
                         let decoded: [Item] = try Decoder.decode(RepositoriesMock().data)
                        expect(decoded[0].id).to(equal(21700699))
                         } catch {}
                }
            }
        }
    }
}
