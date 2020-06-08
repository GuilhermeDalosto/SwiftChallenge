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
    
    
    /// @author Guilherme Dalosto
      /// Configura os repositórios da classe com os recebidos pelo parâmetro por delegate
      /// - Parameters:
      ///   - transferredRepositories: lista de repositórios transferidos de uma classe
      ///   - imagesFromRepositories: lista de imagens transferidos de uma classe
    func setupRepositories(transferredRepositories: [RepositoryEntity],imagesFromRepositories: [UIImageView]){
        self.storageRepositories = transferredRepositories
        self.storageImageRepositories = imagesFromRepositories
        passDataToRemote()
    }
        
    
    /// @author Guilherme Dalosto
       /// Transfere os dados presentes na classe definida para uma remota
    func passDataToRemote() {
        remoteViewController!.receiveData(repositories: self.storageRepositories!,images: self.storageImageRepositories!)
    }
}
