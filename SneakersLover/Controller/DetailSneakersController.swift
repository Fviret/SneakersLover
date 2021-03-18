//
//  DetailSneakersController.swift
//  SneakersLover
//
//  Created by Florian  on 14/03/2021.
//

import UIKit

class DetailSneakersController: UIViewController {

    
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var imageSneakers: UIImageView!
    @IBOutlet weak var PompeDescriptif: UITextView!
    
    var sneaker: Sneakers!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = sneaker.name
        imageSneakers.image = UIImage(named: sneaker.imageSting)
        PompeDescriptif.text = sneaker.desc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
