//
//  RepositoryViewController.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
import Kingfisher

final class RepositoryViewController: UIViewController, ReceiveRefreshEventProtocol{
    
    var remoteView: RepositoryView?
    var interactor = RepositoryInteractor()
    var presenter: RepositoryPresenterLogicProtocol
    
    
    
    init(presenter: RepositoryPresenterLogicProtocol){
        self.presenter = presenter
        self.remoteView = RepositoryView(frame: UIScreen.main.bounds)
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
    
    
    /// @author GuilhermeDalosto
    /// Contata a sua interactor para busca de mais dados, passando uma request, presente do enum, de qual dado
    func contactForData(){
        interactor.fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData.init())
    }
    
    /// @author GuilhermeDalosto
    /// Recebe o dado por delegate e a transfere para uma view remota para sua apresentação.
    func receiveData(repositories: [RepositoryEntity],images: [UIImageView]){
        self.remoteView!.dataRepositories = repositories
        self.remoteView!.imageRepositories = images
        self.remoteView!.tableView.refreshControl?.endRefreshing()
        self.remoteView!.tableView.reloadData()
        print("Data receive with success")
    }
    
}
