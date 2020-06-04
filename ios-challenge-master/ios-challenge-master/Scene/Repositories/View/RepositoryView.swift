//
//  RepositoryView.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryView: UIView{
    
    var repositories: [RepositoryEntity]?
    
    private(set) var tableView: RepositoryTableView = {
        let view = RepositoryTableView(frame: .zero,style: .plain)
        view.register(RepositoryTableCell.self, forCellReuseIdentifier: "RepositoryTableCell")
        //view.separatorStyle = .none
        view.backgroundColor = UIColor(red: 228, green: 228, blue: 226, alpha: 1)
        return view
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
