//
//  BestSellerController.swift
//  SneakersLover
//
//  Created by Florian  on 18/03/2021.
//

import UIKit
import MapKit

class BestSellerController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    var appelAll = Datas().all()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DropSneakersOnTheMap()

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 
    func DropSneakersOnTheMap(){
        appelAll.forEach{ (Sneakers) in
            let geocoder =  CLGeocoder()
            geocoder.geocodeAddressString(Sneakers.BestSeller) { (placemark, error) in
                if let e = error{
                    print("Sneaker \(Sneakers.name) pas vu car \(e.localizedDescription)")
                }
                if let location = placemark?.first?.location {
                    let ping = MKPointAnnotation()
                    ping.coordinate = location.coordinate
                    ping.title = Sneakers.name
                    self.map.addAnnotation(ping)
                }
            }
        }
    }

}
