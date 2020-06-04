//
//  RepositoryViewController.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryViewController: UIViewController, ReceiveRefreshEventProtocol{
        
    var remoteView: RepositoryView?
    var interactor = RepositoryInteractor()
    var presenter: RepositoryPresenterLogicProtocol
    
    
    init(presenter: RepositoryPresenterLogicProtocol){
        self.presenter = presenter
        self.remoteView = RepositoryView()
        super.init(nibName: nil, bundle: nil)
        self.remoteView!.delegate = self
        
        interactor.presenter = self.presenter
        interactor.fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData.init())
        self.view = self.remoteView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func contactForData(){
        interactor.fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData.init())
    }
    
    func receiveData(repositories: [RepositoryEntity]){        
        self.remoteView!.values = repositories
        self.remoteView!.tableView.refreshControl?.endRefreshing()
        self.remoteView!.tableView.reloadData()
        print("Data receive with success")
    }
    
    
    
}
