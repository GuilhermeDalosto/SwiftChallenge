//
//  RepositoryViewTableCell.swift
//  ios-challenge-master
//
//  Created by Guilherme Martins Dalosto de Oliveira on 03/06/20.
//  Copyright © 2020 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
import SnapKit

final class RepositoryViewTableCell: UITableViewCell{
    
    lazy var repositoryName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 20)
        label.textAlignment = NSTextAlignment.left
        label.sizeToFit()
        return label
    }()
    
    lazy var starCount: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 12)
        label.textAlignment = NSTextAlignment.left
        label.sizeToFit()
        return label
    }()
    
    lazy var starImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "starIcon"))        
        return view
    }()
    
    lazy var authorName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 12)
        label.textAlignment = NSTextAlignment.left
        label.sizeToFit()        
        return label
    }()
    
    lazy var authorImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "profileIcon"))
        view.layer.borderWidth = 1.0
        view.layer.masksToBounds = false
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 30 / 2
        view.clipsToBounds = true
        return view
    }()
    
    
    lazy var languageName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 12)
        label.textAlignment = NSTextAlignment.left
        label.sizeToFit()
        return label
    }()
    
    lazy var languageImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "languageIcon"))
        return view
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        setupElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupElements(){
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = 5.0
        self.layer.shadowOpacity = 0.2
        
        //     self.addSubview(container)
        
        self.addSubview(repositoryName)
        
        self.addSubview(starCount)
        self.addSubview(starImage)
        
        self.addSubview(authorName)
        self.addSubview(authorImage)
        
        self.addSubview(languageName)
        self.addSubview(languageImage)
        
        makeConstraints()
    }
    
    private func makeConstraints(){
        
        repositoryName.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(15)
            make.left.equalToSuperview().inset(30)
        }
        
        languageName.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(15)
            make.left.equalToSuperview().inset(45)
        }
        
        languageImage.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(12)
            make.left.equalToSuperview().inset(25)
        }
        
        
        starCount.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(15)
            make.left.equalToSuperview().inset(140)
        }
        
        starImage.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(17)
            make.left.equalToSuperview().inset(125)
        }
        
        authorName.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(15)
            make.right.equalToSuperview().inset(30)
        }
        
        authorImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(15)
            make.right.equalToSuperview().inset(30)
        }
        
        
        
    }
}
