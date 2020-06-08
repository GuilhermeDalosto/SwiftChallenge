//
//  RepositoryWorkerLogic.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

protocol RepositoryDataWorkerLogic{
    /// @author Guilherme Dalosto
    /// Acessa todos os repositórios com o decode, retornando cada valor de cada item no array da API específica
    /// - Parameter completion: array de repositórios requisitados
    func fetchData(completion: @escaping ([RepositoryEntity]?,Error?) -> ()) 
}
