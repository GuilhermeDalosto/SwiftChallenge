//
//  RepositoryEntity.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

// @author: Guilherme Dalosto
struct RepositoryEntity: Codable{
    
    let author: AuthorEntity
    let name: String
    let starCount: Int
    let language: String     
    
    enum CodingKeys: String, CodingKey{
        case author = "owner"
        case name
        case starCount = "stargazersCount"
        case language
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.author = try container.decodeIfPresent(AuthorEntity.self, forKey: .author) ?? AuthorEntity(from: decoder) // FIX
        self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? "Repository Name"
        self.starCount = try container.decodeIfPresent(Int.self, forKey: .starCount) ?? 0
        self.language = try container.decodeIfPresent(String.self, forKey: .language) ?? "Language"
        
    }
}

