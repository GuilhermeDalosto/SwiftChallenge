//
//  AuthorEntity.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

struct AuthorEntity: Codable{
    let name: String
    let profilePicture: String
    
    enum CodingKeys: String, CodingKey{
        case name
        case profilePicture
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? "Username"
        self.profilePicture = try container.decodeIfPresent(String.self, forKey: .profilePicture) ?? "profileURL"
    }
}
