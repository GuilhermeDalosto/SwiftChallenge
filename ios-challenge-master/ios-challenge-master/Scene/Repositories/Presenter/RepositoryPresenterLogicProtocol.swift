//
//  RepositoryPresenterLogicProtocol.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

protocol RepositoryPresenterLogicProtocol{
    
    /// @author Guilherme Dalosto
    /// Configura os repositórios da classe com os recebidos pelo parâmetro por delegate
    /// - Parameters:
    ///   - transferredRepositories: lista de repositórios transferidos de uma classe
    ///   - imagesFromRepositories: lista de imagens transferidos de uma classe
    func setupRepositories(transferredRepositories: [RepositoryEntity],imagesFromRepositories: [UIImageView])
    
    /// @author Guilherme Dalosto
    /// Transfere os dados presentes na classe definida para uma remota
    func passDataToRemote() -> Void
}
