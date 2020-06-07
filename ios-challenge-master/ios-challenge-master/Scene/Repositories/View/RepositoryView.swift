//
//  RepositoryView.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
import SnapKit

final class RepositoryView: UIView{
    
    var dataRepositories: [RepositoryEntity] = []
    var imageRepositories: [UIImageView] = []
    var delegate: ReceiveRefreshEventProtocol?
    // fix
    var showTableViewLimit = 10
    
    private(set) var tableView: UITableView = {
        let view = UITableView(frame: .zero)
        view.register(RepositoryViewTableCell.self, forCellReuseIdentifier: "RepositoryTableCell")
        
        return view
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.contentInset = UIEdgeInsets(top:0,left: 0,bottom: Metrics.screenSize.Height*0.15,right:  0);
        
        self.addSubview(tableView)
        setupConstraints()
        setupRefreshControl()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupRefreshControl(){
        let refreshControl = UIRefreshControl()
        //refreshControl.attributedTitle = NSAttributedString(string: "")
        refreshControl.addTarget(self, action: #selector(self.refreshTableView(_:)), for: .valueChanged)
        self.tableView.refreshControl = refreshControl
    }
    
    @objc func refreshTableView(_ sender: AnyObject){
        print("Pull to refresh")
        delegate?.contactForData()
        self.tableView.reloadData()
    }
    
    func setupConstraints(){
        tableView.snp.makeConstraints { (make) in
            make.leftMargin.rightMargin.equalToSuperview()
            make.top.equalToSuperview().inset(60)
            make.height.equalTo(Metrics.screenSize.Height)
        }
    }
    
}
