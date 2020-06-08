//
//  GitHubServiceAPI.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation


// @author: Guilherme Dalosto
final class GitHubServiceAPI{
    private let urlSession = URLSession.shared
    private let baseURL = URL(string: NetworkService.baseURL)
    
     let jsonDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase        
        return jsonDecoder
    }()
}
