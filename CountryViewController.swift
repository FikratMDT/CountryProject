//
//  CountryViewController.swift
//  CountryProject
//
//  Created by Fikrat on 25.06.22.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
 
    
    var identifier = "\(CountryViewCell.self)"
    var countryNames = ["USA", "Brazil", "Turkiye", "AZE"]
    var countryFlags = ["us", "br", "tr", "az"]
    

}

extension CountryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        countryNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CountryViewCell
        cell.titleLabel.text = countryNames[indexPath.item]
        cell.flagImage.image=UIImage(named: countryFlags[indexPath.item])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize (width: collectionView.frame.width * 0.96, height: 50)
    }
   
    
    
    
}
