//
//  RepositoryTableView.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

final class RepositoryTableView: UITableView{
    
    var values: [RepositoryEntity]?
    
    lazy var repositoryCell: RepositoryTableCell = {
        let view = RepositoryTableCell(frame: .zero)
        view.accessoryType = .disclosureIndicator
        view.detailTextLabel?.text = ""
        view.textLabel?.text = "Date"
        return view
    }()
    
}
