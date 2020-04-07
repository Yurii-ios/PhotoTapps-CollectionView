//
//  PhotoVC.swift
//  PhotoTapps-CollectionView
//
//  Created by Yurii Sameliuk on 07/04/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class PhotoVC: UIViewController {
    // prinimaet photo
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    @IBAction func shareButton(_ sender: UIButton) {
    }
    
}
