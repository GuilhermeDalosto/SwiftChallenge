//
//  RepositoryPresenter.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

final class RepositoryPresenter: RepositoryPresenterLogicProtocol{
    
    var repositories: [RepositoryEntity]?
    
    func setupView() {
        for repository in repositories {
            print(repository)
        }
    }
}
