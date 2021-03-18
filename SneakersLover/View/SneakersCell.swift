//
//  SneakersCell.swift
//  SneakersLover
//
//  Created by Florian  on 12/03/2021.
//

import UIKit

class SneakersCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    
    var sneaker : Sneakers!{
        didSet {
            contentView.clipsToBounds = true
            contentView.layer.cornerRadius = 20
            nameCell.text = sneaker.name
            imageCell.image = UIImage(named: sneaker.imageSting)
        }
    }
    
}
