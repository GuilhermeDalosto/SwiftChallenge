//
//  VIPModuleBuilder.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class VIPModuleBuilder{
     func build() -> UIViewController{
        let presenter = RepositoryPresenter()
        let view = RepositoryView()
        let viewModel = RepositoryViewController(presenter: presenter)
        viewModel.remoteView = view
        
        return viewModel
    }
}