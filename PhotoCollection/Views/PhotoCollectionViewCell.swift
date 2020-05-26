//
//  PhotoCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Propeties
    var imageView: UIImageView?
    var titleLabel: UILabel?
    var photo: Photo?{
        didSet{
            updateView()
        }
    }
    

    //MARK: - Initial View
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpSubviews()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Cell set up
    func updateView() {
        guard let photo = photo else {return}
        
        imageView?.image = UIImage(data: photo.imageData)
        titleLabel?.text = photo.title
    }
    
    func setUpSubviews() {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1)
            
            
        ])
        
        self.imageView = imageView
        self.titleLabel = titleLabel
    }
    
}
