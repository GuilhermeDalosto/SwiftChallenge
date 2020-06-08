//
//  APIServiceError.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation


// @author: Guilherme Dalosto
/// Enum de acordo com os erros que podem acontecer na requisição API
public enum APIServiceError: String, Error {
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case decodeError
}
