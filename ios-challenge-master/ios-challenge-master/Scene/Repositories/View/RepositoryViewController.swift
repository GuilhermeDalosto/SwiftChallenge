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
    
    func contactForData(){
        interactor.fetchRepository(request: RepositoryList.Request.RepositoryEntityMockData.init())
    }
    
    func receiveData(repositories: [RepositoryEntity]){
        self.remoteView!.dataRepositories = repositories
        transferImageData(repositories: repositories) {
            self.remoteView!.tableView.refreshControl?.endRefreshing()
            self.remoteView!.tableView.reloadData()
            print("Data receive with success")
        }
    }
    
    func transferImageData(repositories: [RepositoryEntity],completion: @escaping () -> ()){
        for index in 0..<repositories.count{
            let url = URL(string: repositories[index].author.profilePicture)
            let imageSet = UIImageView()
            imageSet.kf.setImage(with: url, placeholder: nil, options: nil, progressBlock: nil) { (result) in
                switch result{
                case .success( _):
                    imageSet.image = ImageResize().resizeImage(image: imageSet.image!, newWidth: 30)                    
                    self.remoteView!.imageRepositories.append(imageSet)
                    if index == repositories.count-1 {
                        completion()
                    }
                case .failure( _):
                    imageSet.image = UIImage.init(named: "profileIcon")
                    if index == repositories.count-1 {completion()}
                }
            }
            
            
            let image = UIImageView()
            image.kf.setImage(with: url)
        }
        
    }
    
}
