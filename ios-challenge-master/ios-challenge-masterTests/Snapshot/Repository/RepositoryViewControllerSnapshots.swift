//
//  RepositoryViewControllerSnapshots.swift
//  ios-challenge-masterTests
//
//  Created by Guilherme Martins Dalosto de Oliveira on 08/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import ios_challenge_master

class RepositoryViewControllerSnapshots: QuickSpec{
    override func spec() {
           describe("RepositoryViewController Snapshots") {
            let presenter = RepositoryPresenter()
               context("empty view controller") {
                   it("should have table view") {
                    let viewController = RepositoryViewController(presenter: presenter)
                    expect(viewController.view).to(haveValidSnapshot(named: "RepositoryViewController"))
                    expect(viewController.view) == snapshot("RepositoryViewController")
                   }
               }
           }
       }
    
}
