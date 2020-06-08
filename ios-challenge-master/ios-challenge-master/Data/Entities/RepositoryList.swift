//
//  RepositoryList.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

// @author: Guilherme Dalosto
/// Enum do Repositorio de acordo com suas calls e requests para passagem de valor na função
enum RepositoryList{
    enum Request{
        struct RepositoryEntity{
            var name: String
        }
        struct RepositoryEntityMockData{
            var data: String?
        }
    }
    
    struct Response{
        var repositories: [Response.FetchResponse]
        
        struct FetchResponse{
            var repository: RepositoryEntity
            var author: AuthorEntity
        }
        
        enum Status{
            case success
            case error
        }
        
    }
    
}
