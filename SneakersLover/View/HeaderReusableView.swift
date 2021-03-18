//
//  HeaderReusableView.swift
//  SneakersLover
//
//  Created by Florian  on 14/03/2021.
//

import UIKit

class HeaderReusableView: UICollectionReusableView {
    
    
    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var LogoName: UILabel!
    @IBOutlet weak var ContentViewHeader: UIView!

    func setup(_ title: String, _ Img: String){
        ContentViewHeader.clipsToBounds = true
        ContentViewHeader.layer.cornerRadius = 10
        LogoName.text = title
        LogoImage.image = UIImage(named: Img)
    }

}
