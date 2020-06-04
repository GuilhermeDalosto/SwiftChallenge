//
//  RepositoryViewController.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryViewController: UIViewController{
    
    var remoteView: RepositoryView?
    var interactor = RepositoryInteractor()
    var presenter: RepositoryPresenterLogicProtocol
    
    
    init(presenter: RepositoryPresenterLogicProtocol){
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.presenter = self.presenter
        interactor.fetchRepository(request: nil)
        self.view = selfd.remoteView
    }
    
    func receiveData(repositories: [RepositoryEntity]){        
        self.remoteView?.tableView.values = repositories
    }
    
    
    
}
