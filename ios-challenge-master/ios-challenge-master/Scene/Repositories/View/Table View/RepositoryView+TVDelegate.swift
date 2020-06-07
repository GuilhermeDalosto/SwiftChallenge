//
//  RepositoryView+TVDelegate.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

extension RepositoryView: UITableViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offSet = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        
        if offSet > contentHeight - scrollView.frame.height{
            if !(showTableViewLimit >= dataRepositories.count) {
                // Obs : If there was more data, it would be added, because the index is showing only by the list capacity in the array
                showTableViewLimit += 2
                self.tableView.reloadData()
            }
        }
    }
}
