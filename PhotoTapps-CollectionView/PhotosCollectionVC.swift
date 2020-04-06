//
//  PhotosCollectionVC.swift
//  PhotoTapps-CollectionView
//
//  Created by Yurii Sameliuk on 06/04/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class PhotosCollectionVC: UICollectionViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        cell.backgroundColor = .black
        // Configure the cell
    
        return cell
    }



}
// pozwoliaet konfigyrirowat nastrojki autolayout w kode!
extension PhotosCollectionVC: UICollectionViewDelegateFlowLayout {
    // nastraiwaem wid ja4eek
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // dwe ja4ejki na idin riad
        let itemsPerRow: CGFloat = 2
       // koli4estwo otstypow w 1 riady
        let paddingWidth = 20 * (itemsPerRow + 1)
        // wuzwa4aem kakaja shirina nam dostypna dlia razmes4enija ja4eek
        let availableWeidth = collectionView.frame.width - paddingWidth
        // wus4ituwaem shiriny konkretnogo obekta
        let widthPerIten = availableWeidth / itemsPerRow
        // razmwr ja4eek
        return CGSize(width: widthPerIten, height: widthPerIten)
    }
    
    // nastraiwaem granicu ja4eek do kraew ekrana i meždy soboj, eto otstypu ne dlia CollectionView a dlia samix section!!
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    // nastrojka rasstojanija meždy linijami section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(20)
    }
    // nastrojka rasstojanija meždy samimi obektami
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(20)
    }
}
