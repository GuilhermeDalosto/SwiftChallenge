//
//  RepositoryDataImageWorkerLogic.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

protocol RepositoryDataImageWorkerLogic{
    func fetchDataImage(repositories: [RepositoryEntity],completion: @escaping ([UIImageView]?) -> ())
}
