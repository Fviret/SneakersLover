//
//  SneakersCollectionController.swift
//  SneakersLover
//
//  Created by Florian  on 10/03/2021.
//

import UIKit

class SneakersCollectionController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var footlocker : [SneakersCategory] = [
        SneakersCategory(name: "Adidas", imgLogo: "AddiasLogo", ArraySneakers: Datas().adidas),
        SneakersCategory(name: "Nike", imgLogo: "nikelog", ArraySneakers: Datas().nike),
        SneakersCategory(name: "Puma", imgLogo: "PumaLogo", ArraySneakers: Datas().puma)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToSegue" {
            if let nextPage = segue.destination as? DetailSneakersController{
                nextPage.sneaker = sender as? Sneakers
            }
        }
    }


}
