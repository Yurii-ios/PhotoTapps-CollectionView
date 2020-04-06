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
    
}
