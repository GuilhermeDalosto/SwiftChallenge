//
//  RepositoryView.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryView: UIView{
    
    private var presenter: RepositoryPresenter?
    
    private(set) var tableView: UITableView = {
        let view = UITableView(frame: .zero,style: .plain)
        view.register(RepositoryTableCell.self, forCellReuseIdentifier: "RepositoryTableCell")
        //view.separatorStyle = .none
        view.backgroundColor = UIColor(red: 228, green: 228, blue: 226, alpha: 1)
        return view
    }()
    
    init(frame: CGRect,repositoryPresenter: RepositoryPresenter){
        super.init(frame: frame)
        self.presenter = repositoryPresenter
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
