//
//  RepositoryView+TVDelegate.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

extension RepositoryView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print(indexPath)
        if indexPath.row  == showTableViewLimit - 1{
            if !(showTableViewLimit >= 30) {
                showTableViewLimit += 3
                self.tableView.reloadData()
            }
        }
        
        
        
    }
}
