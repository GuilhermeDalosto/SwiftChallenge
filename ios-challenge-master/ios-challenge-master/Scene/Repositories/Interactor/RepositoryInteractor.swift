//
//  RepositoryInteractor.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryInteractor: RepositoryInteractorProtocol{
    
    var presenter: RepositoryPresenterLogicProtocol?
    var fetchDataWorker: RepositoryDataWorker?
    var fetchDataImageWorker: RepositoryDataImageWorker?
    
    init(){
        fetchDataWorker = RepositoryDataWorker()
        fetchDataImageWorker = RepositoryDataImageWorker()
    }
    
    func fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData) {
        fetchDataWorker?.fetchData(completion: { (repositories, error) in
            if error != nil{ return }
            self.fetchImages(repositories: repositories!) { images in
                self.presenter!.setupRepositories(transferredRepositories: repositories!,imagesFromRepositories: images)
            }
            
        })
    }
    
    func fetchImages(repositories: [RepositoryEntity],completion: @escaping ([UIImageView]) -> ()){
        fetchDataImageWorker?.fetchDataImage(repositories: repositories, completion: { (images) in
            completion(images!)
        })
    }
    
    
}
