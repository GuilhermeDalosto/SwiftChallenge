//
//  RepositoryView+TVDataSource.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

extension RepositoryView: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableView.values!.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let value = self.tableView.values else {return self.tableView.repositoryCell}
        let cell = self.tableView.repositoryCell
        cell.repositoryName.text = value[indexPath.row].name
        cell.starCount.text = "\(value[indexPath.row].starCount)"
        cell.authorName.text = value[indexPath.row].author.name        
        return cell
    }
    
    
}
