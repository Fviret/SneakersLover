//
//  ExtentionController.swift
//  SneakersLover
//
//  Created by Florian  on 12/03/2021.
//

import UIKit

extension SneakersCollectionController: UICollectionViewDelegate , UICollectionViewDataSource{
    
    
    
    func setup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = layout()
    }
    
    func layout() ->  UICollectionViewFlowLayout{
        let cote = collectionView.frame.width * 0.50
        let size = CGSize(width: cote, height: cote)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = size
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.headerReferenceSize = CGSize(width:collectionView.frame.width, height: 80)
        return layout
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return footlocker.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let footSection = footlocker[section]
        let pompe = footSection.ArraySneakers
        return pompe.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sneaker = footlocker[indexPath.section].ArraySneakers[indexPath.item]
        let cellule = collectionView.dequeueReusableCell(withReuseIdentifier: "SneakersCell", for: indexPath) as! SneakersCell
        cellule.sneaker = sneaker
        return cellule
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as! HeaderReusableView
            header.setup(footlocker[indexPath.section].name, footlocker[indexPath.section].imgLogo)
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let pompe = footlocker[indexPath.section].ArraySneakers[indexPath.item]
        performSegue(withIdentifier: "ToSegue", sender: pompe)
    }
}
