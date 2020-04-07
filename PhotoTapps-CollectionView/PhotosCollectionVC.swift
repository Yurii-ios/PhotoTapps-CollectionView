//
//  PhotosCollectionVC.swift
//  PhotoTapps-CollectionView
//
//  Created by Yurii Sameliuk on 06/04/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class PhotosCollectionVC: UICollectionViewController  {
    
    let photos = ["dog1","dog2","dog3","dog4","dog5","dog6","dog7","dog8","dog9","dog10","dog11","dog12","dog13","dog14","dog15","dog16","dog17","dog18","dog19","dog20","dog21"]
    
    // dwe ja4ejki na odin riad
          let itemsPerRow: CGFloat = 3
    // delaem otstypu ot sekcij
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
   
    override func viewDidLoad() {
        super.viewDidLoad()
// drygaja nastrojka layouta bez ispolzowanija UICollectionViewDelegateFlowLayout
    //        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout // poly4aem dostyp po nastrojke layout
    //        // nastraiwaem razmer ja4eek
    //        layout.itemSize = CGSize(width: 70, height: 30)
    //        // nastrojka rasstojanija meždy otstypami ja4eek
    //        layout.sectionInset =  UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    //        // rastojanie meždy obektami po strokam
    //        layout.minimumLineSpacing = CGFloat(1)
    //        // rastajanija meždy samimi obektami
    //        layout.minimumInteritemSpacing = CGFloat(1)
    //        layout.scrollDirection = .vertical
    //        // yberaem polosky sostojanija prokrytki
    //        collectionView.showsVerticalScrollIndicator = false
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
       
        // Configure the cell
        let imageName = photos[indexPath.item]
        let image = UIImage(named: imageName)
        cell.dogImageView.image = image
        return cell
    }



}
// pozwoliaet konfigyrirowat nastrojki autolayout w kode!
extension PhotosCollectionVC: UICollectionViewDelegateFlowLayout {
    // nastraiwaem wid ja4eek
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
       // koli4estwo otstypow w 1 riady
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1) // .left - chranit konstanty 20, kotoraja zadana wushe
        // wuzwa4aem kakaja shirina nam dostypna dlia razmes4enija ja4eek
        let availableWeidth = collectionView.frame.width - paddingWidth
        // wus4ituwaem shiriny konkretnogo obekta
        let widthPerIten = availableWeidth / itemsPerRow
        // razmwr ja4eek
        return CGSize(width: widthPerIten, height: widthPerIten)
    }

    // nastraiwaem granicu ja4eek do kraew ekrana i meždy soboj, eto otstypu ne dlia CollectionView a dlia samix section!!
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }
    // nastrojka rasstojanija meždy linijami section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
    // nastrojka rasstojanija meždy samimi obektami
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
}
