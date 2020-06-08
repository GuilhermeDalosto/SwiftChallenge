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
    
    
    /// @author Guilherme Dalosto
    /// Comunica com outras entidades, 'worker' para este realizar determinada ação em um Request
    /// - Parameter request: A entidade repositório
    func fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData) {
        fetchDataWorker?.fetchData(completion: { (repositories, error) in
            if error != nil{ return }
            self.fetchImages(repositories: repositories!) { images in
                self.presenter!.setupRepositories(transferredRepositories: repositories!,imagesFromRepositories: images)
            }
            
        })
    }
    
    
    /// @author Guilherme Dalosto
    /// Comunica com outras entidades,'worker'para este acessar as imagens presentes pela URL na entidade passada por parametro
    /// - Parameters:
    ///   - repositories: array de repositórios
    ///   - completion: array de imagens
    func fetchImages(repositories: [RepositoryEntity],completion: @escaping ([UIImageView]) -> ()){
        fetchDataImageWorker?.fetchDataImage(repositories: repositories, completion: { (images) in
            completion(images!)
        })
    }
    
    
}
