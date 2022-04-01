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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
