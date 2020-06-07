//
//  RepositoryDataWorker.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
import Moya
import Kingfisher

final class RepositoryDataWorker: RepositoryDataWorkerLogic{
    
    let serviceRequest = MoyaProvider<NetworkService>()
    
    func fetchData(completion: @escaping ([RepositoryEntity]?, Error?) -> ()) {
        
        serviceRequest.request(.listQuery){ (result) in
            switch result{
            case .success(let response):
                do{                    
                    let repositories: [RepositoryEntity] = try ItemDecoder.decode(response.data)
                    print(repositories.count)
                    completion(repositories,nil)                    
                }catch{
                    print(error.localizedDescription)
                    completion(nil, error)
                }
            case .failure(let error):
                print(error.errorDescription!)
                completion(nil,error)
                
            }
            
        }
    }
    
    
}
