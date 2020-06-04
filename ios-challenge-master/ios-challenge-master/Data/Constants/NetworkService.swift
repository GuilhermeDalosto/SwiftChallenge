//
//  NetworkConstants.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Moya


enum NetworkService{
    case singleQuery
    case listQuery
    static let baseURL = "https://api.github.com/"
    static let searchType = "search/repositories?q=language:swift&sort=stars"
    static let language = "swift"
    static let sortMethod = "sort=stars"
}

extension NetworkService: TargetType{
    var baseURL: URL {
        return URL(string: "https://api.github.com/search/repositories?q=language:swift&sort=stars")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Method {
        switch self{
        case .listQuery,.singleQuery:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
}
