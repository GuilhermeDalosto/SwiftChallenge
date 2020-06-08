//
//  ReceiveRefreshEventProtocol.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation

/// @author GuilhermeDalosto
/// Contata a sua interactor para busca de mais dados, passando uma request, presente do enum, de qual dado
protocol ReceiveRefreshEventProtocol{
    func contactForData() -> Void
}
