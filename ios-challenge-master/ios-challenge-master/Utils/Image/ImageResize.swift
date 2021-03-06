//
//  ImageResize.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 04/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

class ImageResize{
    
    
    // @author: Guilherme Dalosto
    /// Redimensionar a imagem de acordo com uma largura passada por parâmetro
    /// - Parameters:
    ///   - image: imagem a ser redimensionada
    ///   - newWidth: novo tamanho da imagem
    /// - Returns: imagem redimensionada
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {

         let scale = newWidth / image.size.width
         let newHeight = image.size.height * scale
         UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
         image.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
         let newImage = UIGraphicsGetImageFromCurrentImageContext()
         UIGraphicsEndImageContext()

         return newImage!
     }
}
