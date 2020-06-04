//
//  RepositoryPresenter.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

final class RepositoryPresenter: RepositoryPresenterLogicProtocol{
    
    var storageRepositories: [RepositoryEntity]?
    var remoteViewController: RepositoryViewController?
    
    func setupRepositories(transferredRepositories: [RepositoryEntity]){
        storageRepositories = transferredRepositories
    }
    
    
    func passDataToRemote() {
        remoteViewController!.receiveData(repositories: self.storageRepositories!)        
    }
    
    
    
    
}
