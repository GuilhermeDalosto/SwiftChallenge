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
        return showTableViewLimit
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Metrics.screenSize.Height*0.15
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if !((self.dataRepositories.indices.contains(indexPath.row))
            &&
            self.imageRepositories.indices.contains(indexPath.row))
            {return UITableViewCell()}
        let value = self.dataRepositories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryTableCell", for: indexPath) as! RepositoryViewTableCell
        cell.repositoryName.text = value.name
        cell.starCount.text = "\(value.starCount)"
        cell.authorName.text = value.author.login
        cell.languageName.text = value.language
        cell.authorImage.image = self.imageRepositories[indexPath.row].image
        
        return cell
    }
}



