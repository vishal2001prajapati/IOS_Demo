//
//  CollectionViewCell.swift
//  IOS App
//
//  Created by Vishal Prajapati on 21/03/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var lblMovie: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    
    //MARK: - config Method
    func configCell(name :String,image: String) {
        lblMovie.text = name
        imgMovie.image = UIImage(named: image)
    }
}
