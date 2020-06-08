//
//  RepositoryInteractorProtocol.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

protocol RepositoryInteractorProtocol{
    
    
    /// @author Guilherme Dalosto
    /// Comunica com outras entidades, 'worker' para este realizar determinada ação em um Request
    /// - Parameter request: A entidade repositório
    func fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData)
    
    
    /// @author Guilherme Dalosto
    /// Comunica com outras entidades,'worker'para este acessar as imagens presentes pela URL na entidade passada por parametro
    /// - Parameters:
    ///   - repositories: array de repositórios
    ///   - completion: array de imagens
    func fetchImages(repositories: [RepositoryEntity],completion: @escaping ([UIImageView]) -> ())
}
