//
//  Array+RemoveDuplicates.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

extension Array where Element: Equatable{
    
    // @author: Guilherme Dalosto
    // Remover todos elementos que estejam duplicados em uma Array
    mutating func removeDuplicates(){
        var result = [Element]()
        for value in self{
            if !result.contains(value){
                result.append(value)
            }
        }
        self = result
    }
}
