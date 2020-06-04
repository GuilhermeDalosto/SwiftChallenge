//
//  ItemDecoder.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

enum ItemDecoder{
    private struct Root<Element>: Decodable where Element: Decodable{
        let totalCount: Int
        let incompleteResults: Bool
        let items: [Element]
    }
    
    static func decode<Element>(_ data: Data) throws -> [Element] where Element: Decodable {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase            
        return try decoder.decode(Root<Element>.self, from: data).items
    }
}
