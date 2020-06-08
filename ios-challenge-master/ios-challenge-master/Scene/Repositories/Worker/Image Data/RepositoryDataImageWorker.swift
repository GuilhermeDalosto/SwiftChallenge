//
//  RepositoryDataImageWorker.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 07/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
 
class RepositoryDataImageWorker: RepositoryDataImageWorkerLogic{
    
    
       // @author: Guilherme Dalosto
    /// Acessa os repositórios para pegar a imagem de URL de cada usuário e retorna o array de todas as imagens de cada repositório
    /// - Parameters:
    ///   - repositories: array de repositórios adquiridos
    ///   - completion: imagens adquiridas dos usuários autores dos repositórios
    func fetchDataImage(repositories: [RepositoryEntity],completion: @escaping ([UIImageView]?) -> ()) {
        var resImagesRet: [UIImageView] = []
        for index in 0..<repositories.count{
                   let url = URL(string: repositories[index].author.profilePicture)
                   let imageSet = UIImageView()
                   imageSet.kf.setImage(with: url, placeholder: nil, options: nil, progressBlock: nil) { (result) in
                       switch result{
                       case .success( _):
                           imageSet.image = ImageResize().resizeImage(image: imageSet.image!, newWidth: 30)
                           resImagesRet.append(imageSet)
                           if index == repositories.count-1 {
                               completion(resImagesRet)
                           }
                       case .failure( _):
                           imageSet.image = UIImage.init(named: "profileIcon")
                           if index == repositories.count-1 {completion(nil)}
                       }
                   }
               }
    }
    
    
}
