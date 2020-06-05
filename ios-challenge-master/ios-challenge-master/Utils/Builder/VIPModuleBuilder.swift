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
        let nav = UINavigationController()
        let presenter = RepositoryPresenter()
        let viewController = RepositoryViewController(presenter: presenter)
        presenter.remoteViewController = viewController
        viewController.title = "Most starred Repositories in GitHub"
        nav.addChild(viewController)        
        return nav
    }
}
