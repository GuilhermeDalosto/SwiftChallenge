//
//  RepositoryPresenter.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryPresenter: RepositoryPresenterLogicProtocol{
    
    var storageRepositories: [RepositoryEntity]?
    var storageImageRepositories: [UIImageView]?
    var remoteViewController: RepositoryViewController?
    
    func setupRepositories(transferredRepositories: [RepositoryEntity],imagesFromRepositories: [UIImageView]){
        self.storageRepositories = transferredRepositories
        self.storageImageRepositories = imagesFromRepositories
        passDataToRemote()
    }
        
    func passDataToRemote() {
        remoteViewController!.receiveData(repositories: self.storageRepositories!,images: self.storageImageRepositories!)
    }
}
