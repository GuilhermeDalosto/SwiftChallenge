//
//  RepositoryEntity+Sequence.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

struct RepositoryEntitySequence{
    let value: RepositoryEntity
    var list: [RepositoryEntity]
    var indexInSequence = 0
    
    init(value: RepositoryEntity,list: [RepositoryEntity]){
        self.value = value
        self.list = list
    }
    
    mutating func next() -> RepositoryEntity? {        
        if indexInSequence < list.count{
            let element = list[indexInSequence]
            indexInSequence += 1
            return element
        } else{
            indexInSequence = 0
            return nil
        }
        
    }
    
}
