//
//  MovieDataViewCell.swift
//  IOS App
//
//  Created by Vishal Prajapati on 17/03/22.
//custome class

import UIKit

class MovieDataViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var lblMovieName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    //MARK: - Config Method
    func configCell(mName: String, mRating: Float, mImage: String) {
        lblMovieName.text = mName
        lblRating.text = "\(mRating)"
        movieImage.image = UIImage(named: mImage)
    }
}
