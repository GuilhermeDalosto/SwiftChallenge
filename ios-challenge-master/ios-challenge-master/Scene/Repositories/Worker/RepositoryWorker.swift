//
//  RepositoryWorker.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation
import Moya
import Kingfisher

final class RepositoryWorker: RepositoryWorkerLogic{
    
    let serviceRequest = MoyaProvider<NetworkService>()
    
    func fetchData(completion: @escaping (RepositoryEntity?, Error?) -> ()) {
        
        serviceRequest.request(.listQuery){ (result) in
            switch result{
            case .success(let response):
                do{
                    
                    let jsonResult = try JSONSerialization.jsonObject(with: response.data, options: .mutableContainers) as! NSDictionary
                    
                    // FIX
                    let items = jsonResult["items"] as! [[String:Any]]
                    let jsonToData = try JSONSerialization.data(withJSONObject: items, options: .prettyPrinted)
                    for element in items{
                        let owner = element["owner"] as! [String:Any]
                        print(owner["login"]!)
                    }
                    
                    let repositories = try GitHubServiceAPI().jsonDecoder.decode(RepositoryEntity.self, from: response.data)
                    print("------------------------")
                    print(repositories)
                        
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
