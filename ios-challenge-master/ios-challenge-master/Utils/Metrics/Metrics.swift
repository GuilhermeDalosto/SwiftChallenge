//
//  Metrics.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

public enum Metrics{
    public enum screenSize{
        public static var Width: CGFloat{
            return UIScreen.main.bounds.width
        }        
        public static var Height: CGFloat{
            return UIScreen.main.bounds.height
        }
    }
}
