//
//  RepositoryWorkerLogic.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

protocol RepositoryDataWorkerLogic{
    func fetchData(completion: @escaping ([RepositoryEntity]?,Error?) -> ()) 
}
