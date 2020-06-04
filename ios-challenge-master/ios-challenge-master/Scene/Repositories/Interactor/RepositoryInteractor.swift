//
//  RepositoryInteractor.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

final class RepositoryInteractor: RepositoryInteractorProtocol{
    
    var presenter: RepositoryPresenterLogicProtocol?
    var fetchDataWorker: RepositoryWorker?
    
    init(){
        fetchDataWorker = RepositoryWorker()
    }
    
    func fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData) {
        fetchDataWorker?.fetchData(completion: { (repositories, error) in
            if error != nil{ return }            
            self.presenter!.setupRepositories(transferredRepositories: repositories!)
        })
    }
    
    
}
