//
//  RepositoryDataImageWorkerLogic.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

protocol RepositoryDataImageWorkerLogic{
    
    // @author: Guilherme Dalosto
    /// Acessa os repositórios para pegar a imagem de URL de cada usuário e retorna o array de todas as imagens de cada repositório
    /// - Parameters:
    ///   - repositories: array de repositórios adquiridos
    ///   - completion: imagens adquiridas dos usuários autores dos repositórios
    func fetchDataImage(repositories: [RepositoryEntity],completion: @escaping ([UIImageView]?) -> ())
}
